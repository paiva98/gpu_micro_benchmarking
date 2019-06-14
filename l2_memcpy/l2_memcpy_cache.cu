// This program show's off how CUDA memory copies go through the
// L2 Cache
// By: Nick from CoffeeBeforeArch

#include <stdlib.h>

// Simple vector addition kernel with easily calculable number of reads
__global__ void vectorAdd(int *a, int *b, int *c, int N){
    int tid = blockIdx.x * blockDim.x + threadIdx.x;

    if(tid < N){
        c[tid] = a[tid] | b[tid];
    }
}

int main(){
    // Number of elements 
    int N = 1 << 10;
    size_t bytes = N * sizeof(int);

    // Host arrays
    int *h_a = new int[N];
    int *h_b = new int[N];
    int *h_c = new int[N];

    for(int i = 0; i < N; i++){
        h_a[i] = rand() % 100;
        h_b[i] = rand() % 100;
    }

    // Device Arrays
    int *d_a, *d_b, *d_c;
    cudaMalloc(&d_a, bytes);
    cudaMalloc(&d_b, bytes);
    cudaMalloc(&d_c, bytes);

    // Copy data over
    cudaMemcpy(d_a, h_a, bytes, cudaMemcpyHostToDevice);
    cudaMemcpy(d_b, h_b, bytes, cudaMemcpyHostToDevice);

    // TB Size and Grid Size
    int THREADS = 256;
    int GRID = (N + THREADS - 1) / THREADS;

    vectorAdd<<<GRID, THREADS>>>(d_a, d_b, d_c, N);

    cudaMemcpy(h_c, d_c, bytes, cudaMemcpyDeviceToHost);
    
    return 0;
}
