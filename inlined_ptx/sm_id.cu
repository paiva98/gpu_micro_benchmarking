// This program gets the SM ID for each CTA launched in a kernel
// By: Nick from CoffeeBeforeArch

#include <iostream>

using namespace std;

// Simple kernel that just gets the SM Id for each TB
__global__ void get_smid(unsigned *sm_ids){
    // Calculate global threadID
    int block = blockIdx.x;
    
    // SM Id
    unsigned sm;

    // Only one thread needs to do the write
    if(threadIdx.x == 0){
        // Use PTX instruction to get the SM Id
        asm volatile("mov.u32 %0, %smid;" : "=r"(sm));

        // Write the block back to main memory
        sm_ids[block] = sm;
    
    }
}

int main(){
    // Number of TBs to launch (16 for this example)
    int TB = 1 << 4;

    // Threads per TB
    int threads = 1024;

    // Allocate space for the SM results
    unsigned *h_sm_ids = new unsigned[TB];
    unsigned *d_sm_ids;
    cudaMalloc(&d_sm_ids, TB * sizeof(unsigned));

    // Call the kernel
    get_smid<<<TB, threads>>>(d_sm_ids);

    // Copy back the Ids
    cudaMemcpy(h_sm_ids, d_sm_ids, TB * sizeof(unsigned), cudaMemcpyDeviceToHost);

    // Print the SM mapping
    for(int i = 0; i < TB; i++){
        cout << "TB " << i << " mapped to SM " << h_sm_ids[i] << endl;
    }

    return 0;
}

