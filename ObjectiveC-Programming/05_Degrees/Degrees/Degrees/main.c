//
//  main.c
//  Degrees
//
//  Created by Tuan Huynh on 4/8/14.
//  Copyright (c) 2014 Tuan Huynh. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>     // gives us EXIT_SUCCESS


// Declare a global variable
float lastTemperature;

// Can also declare a 'static' variable - similar to globals in that it is declared outside of functions.
// Only accessible from the codein the file where it was declared.

float fahrenheitFromCelsius(float cel)
{
    lastTemperature = cel;
    float fahr = cel * 1.8 + 32.0;
    printf("%f Celsius is %f Fahrenheit\n", cel, fahr);
    return fahr;
}

int main(int argc, const char * argv[])
{
    float freezeInC = 0;
    float freezeInF = fahrenheitFromCelsius(freezeInC);
    printf("Water freezes at %f degrees from Fahrenheit.\n", freezeInF);
    
    printf("The last temperature converted was %f", lastTemperature);
    
    // We return 0 from main() to indicate that everything went OK.
    return 0;
    
    // With stdlib.h, we can also:
    // return EXIT_SUCCESS;
}

