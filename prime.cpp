#include <cmath>

# include "prime.h"

using namespace std;

bool isPrimeFor(int n){ //Definition
    if (n%2==0)
        return n==2;

    int limit = sqrt(abs(n));
    if (limit*limit==n)
        return false;

    for (int i = 3; i <= sqrt(n); i+=2)
        if (n%i==0)
            return false;

    return true;
}

bool isPrimeWhile(int n) { //Definition
    if (n % 2 == 0)
	    return n ==2;
	    
    int limit = sqrt(abs(n));
	if (limit * limit ==n)
	    return false;
		
	int p = 3;
	while (p <= limit && n% p !=0)
		p += 2;
		
	return p > limit;
}


