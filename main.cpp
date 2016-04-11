#include "flight.h"
#include "utilities.h"


int main()
{
	
	Flight* flights;
	int numFlights;
	int flag = 1; // value returned from user_interface() 0 = exit, 1 = continue

	fill(flights, numFlights); // put the existing passengers into the array. 

	while(flag)
		flag = user_interface(flights, numFlights); 
		// interact with user to reserve a seat		

	return 0;
}

