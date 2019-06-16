// This program shows the affect of vector memory accesses on
// throughput
// By: Nick from CoffeeBeforeArch
#include <algorithm>

using namespace std;

// Max blocks is 80 SMs with 16 TBs of size 128
// Fills every thread of ever SM in a TITAN V
#define MAX_BLOCKS 1280
#define THREADS 128

// Each thread copies N elements of an array
// Takes:
//  in:     Input array
//  out:    Output array
//  N:      Number of elements to copy
// Returns:
//  NA
__global__ void scalar_copy(int *in, int *out, int N){
    // Calculate global thread ID
    int tid = blockIdx.x * blockDim.x + threadIdx.x;

    // Copy N elements from in to out
    // Moves over length of the grid each iteration
    for(int i = tid; i < N; i += blockDim.x * gridDim.x){
        out[i] = in[i];
    }
}

// Each thread copies N elements of an array using vector 2
// Takes:
//  in:     Input array
//  out:    Output array
//  N:      Number of elements to copy
// Returns:
//  NA
__global__ void vector_2_copy(int *in, int *out, int N){
    // Calculate global thread ID
    int tid = blockIdx.x * blockDim.x + threadIdx.x;

    // Copy N elements from in to out
    // Moves over length of the grid each iteration
    for(int i = tid; i < N / 2; i += blockDim.x * gridDim.x){
        reinterpret_cast<int2*>(out)[i] = reinterpret_cast<int2*>(in)[i];
    }
}

// Each thread copies N elements of an array using vector 4
// Takes:
//  in:     Input array
//  out:    Output array
//  N:      Number of elements to copy
// Returns:
//  NA
__global__ void vector_4_copy(int *in, int *out, int N){
    // Calculate global thread ID
    int tid = blockIdx.x * blockDim.x + threadIdx.x;

    // Copy N elements from in to out
    // Moves over length of the grid each iteration
    for(int i = tid; i < N / 4; i += blockDim.x * gridDim.x){
        reinterpret_cast<int4*>(out)[i] = reinterpret_cast<int4*>(in)[i];
    }
}

// Launch scalar copy
// Takes:
//  in:     Pointer to input vector
//  out:    Pointer to output vector
//  N:      Number of elements
void launch_scalar(int *in, int *out, int N){
    // Number of blocks to launch (power of 2 so no padding)
    int BLOCKS = min(N / THREADS, MAX_BLOCKS);
    
    // Launch the kernel
    scalar_copy<<<BLOCKS, THREADS>>>(in, out, N);
}

// Launch vector 2 copy
// Takes:
//  in:     Pointer to input vector
//  out:    Pointer to output vector
//  N:      Number of elements
void launch_vector_2(int *in, int *out, int N){
    // Number of blocks to launch (power of 2 so no padding)
    int BLOCKS = min(N / THREADS / 2, MAX_BLOCKS);
    
    // Launch the kernel
    vector_2_copy<<<BLOCKS, THREADS>>>(in, out, N);
}

// Launch vector 4 copy
// Takes:
//  in:     Pointer to input vector
//  out:    Pointer to output vector
//  N:      Number of elements
void launch_vector_4(int *in, int *out, int N){
    // Number of blocks to launch (power of 2 so no padding)
    int BLOCKS = min(N / THREADS / 4, MAX_BLOCKS);
    
    // Launch the kernel
    vector_4_copy<<<BLOCKS, THREADS>>>(in, out, N);
}


int main(){
    // Starting number of elements is 4k
    int start = 1 << 12;
    // Ending size is 1G
    int end = 1 << 30;
    // Number of elements for each thread to load
    // Size of the array in bytes
    size_t bytes;

    // Host and device pointers
    int *h_in, *h_out;
    int *d_in, *d_out;

    // Test from 2^12 -> 2^29
    for(int i = start; i <= end; i *= 2){
        // Allocate host memory
        h_in = new int[i];
        h_out = new int[i];

        // Calculate bytes to allocate on GPU
        bytes = i * sizeof(int);

        // Allocate device memory
        cudaMalloc(&d_in, bytes);
        cudaMalloc(&d_out, bytes);

        // Copy data to GPU
        cudaMemcpy(d_in, h_in, bytes, cudaMemcpyHostToDevice);

        launch_scalar(d_in, d_out, i);
        //launch_vector_2(d_in, d_out, i);
        //launch_vector_4(d_in, d_out, i);

        // Copy data from GPU
        cudaMemcpy(h_out, d_out, bytes, cudaMemcpyDeviceToHost);

        // Free memory after use for re-allocation
        delete [] h_in;
        delete [] h_out;
        cudaFree(d_in);
        cudaFree(d_out);
    }

    return 0;
}
