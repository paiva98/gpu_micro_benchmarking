// This file contains multiple arithmetic kernels to better understand
// how they translate into the machine instruction set
// By: Nick from CoffeeBeforeArch

// Subtraction kernels
// Char
__global__ void char_sub(char *a, char *b, char *c){
    *c = *a - *b;
}
// Integer
__global__ void int_sub(int *a, int *b, int *c){
    *c = *a - *b;
}
// Float
__global__ void float_sub(float *a, float *b, float *c){
    *c = *a - *b;
}
// Double
__global__ void double_sub(double *a, double *b, double *c){
    *c = *a - *b;
}
