#include <iostream>
#include "prime.h"
#include <sys/time.h>

using namespace std;

#define DEFAULT 80
//#define LANG

int main(int argc,char *argv[]){//argc numero di parametri,
    
    #ifdef LANG
	cout << "Hello, World!" << endl;
	#else
	cout << "Ciao, Mondo!" << endl;	
    #endif
	
    int P= DEFAULT;
    if(argc>1)
         P= (int) strtol(argv[1],nullptr, 10); //argv[0] è il nome del programma
	struct timeval start, stop;
	
	gettimeofday(&start, NULL);
		//usando for
    for (int u = 0; u < P; ++u) {
        //if (isPrimeFor(u)) //non serve mettere true,la funzione restituisce già
        //    cout << u << " ";
		isPrimeFor(u);
    }
	gettimeofday(&stop, NULL);
	cout << "Section for took:\t" << stop.tv_sec - start.tv_sec << endl;
	
	cout << endl;
	
	gettimeofday(&start, NULL);
	//usando while
	for (int u = 0; u < P; ++u){
		// if (isPrimeWhile(u))
			// cout << u << " ";	
		isPrimeWhile(u);
	}
	gettimeofday(&stop, NULL);
	cout << "Section while took:\t" << stop.tv_sec - start.tv_sec << endl;
	
    cout<<endl;
    return 0;
}
