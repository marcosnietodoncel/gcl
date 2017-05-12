#include <iostream>
#include "vcd.h"

using namespace std;

int main( int argc, char** argv )
{   
    cout << "Hello world!" << endl;
	vcd::VCD myVCD;
	myVCD.someFunction();
   
    return 0;
}
