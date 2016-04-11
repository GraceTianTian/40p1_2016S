#ifndef _FLIGHT_H
#define _FLIGHT_H

#define numCITY 20
#include "plane.h"

typedef struct {
    int flightNum;  
    char origin[numCITY]; 
    char destination[numCITY]; 
    Plane *plane; 
} Flight;

#endif