#include <iostream>

extern "C" {
#include "vic_run.h"
}


__global__
void some_kernel(void) {
    int x = 1;
    x += 1;
}



using namespace std;


extern "C" 
void example_print() {
    cout << "Cuda is linked <---------" << endl;
    some_kernel<<<1, 1>>>();
}


extern "C" 
void init_layer_data(layer_data_struct* obj, layer_data_struct* val, int size) {
    layer_data_struct* d_obj;
    layer_data_struct* d_val;

    cudaMalloc((void**) &d_obj, size);
    cudaMalloc((void**) &d_val, size);

    cudaMemcpy(d_obj, obj, size,  cudaMemcpyHostToDevice);
    cudaMemcpy(d_val, val, size, cudaMemcpyHostToDevice);
}

