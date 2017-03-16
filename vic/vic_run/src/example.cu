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

