// This file contains multiple arithmetic kernels to better understand
// how they translate into the machine instruction set
// By: Nick from CoffeeBeforeArch

// Addition kernels
// Char
__global__ void char_add(char *a, char *b, char *c){
    *c = *a + *b;
}
// Integer
__global__ void int_add(int *a, int *b, int *c){
    *c = *a + *b;
}
// Float
__global__ void float_add(float *a, float *b, float *c){
    *c = *a + *b;
}
// Double
__global__ void double_add(double *a, double *b, double *c){
    *c = *a + *b;
}
