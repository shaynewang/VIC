#include <iostream>

extern "C" {
#include "vic_run.h"
}

using namespace std;

extern "C" 
void example_print() {
    cout << "Cuda is linked <---------" << endl;
}

