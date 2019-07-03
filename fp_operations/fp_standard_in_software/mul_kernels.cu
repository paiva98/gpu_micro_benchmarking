// This file contains multiple arithmetic kernels to better understand
// how they translate into the machine instruction set
// By: Nick from CoffeeBeforeArch

// Multiplication kernels
// Char
__global__ void char_mul(char *a, char *b, char *c){
    *c = *a * *b;
}
// Integer
__global__ void int_mul(int *a, int *b, int *c){
    *c = *a * *b;
}
// Float
__global__ void float_mul(float *a, float *b, float *c){
    *c = *a * *b;
}
// Double
__global__ void double_mul(double *a, double *b, double *c){
    *c = *a * *b;
}
