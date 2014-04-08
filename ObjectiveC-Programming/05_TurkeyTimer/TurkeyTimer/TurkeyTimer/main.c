//
//  main.c
//  TurkeyTimer
//
//  Created by Tuan Huynh on 4/6/14.
//  Copyright (c) 2014 Tuan Huynh. All rights reserved.
//

#include <stdio.h>


// Every function call pushes a `frame` onto the stack
void showCookTimeForTurkey(int pounds)
{
    int necessaryMinutes = 15 + 15 * pounds;
    printf("Cook for %d minutes.\n", necessaryMinutes);
    if (necessaryMinutes > 120) {
        int halfway = necessaryMinutes / 2;
        printf("Rotate after %d of the %d minutes.\n", halfway, necessaryMinutes);
    }
    // if we moved the printf out here, it would not build.
    //   "Use of undeclared identifier 'halfway'"
    // Braces form the scope; outside of the if statement, halfway doesn't exist.
    {
        int foo = 1;
        //outside of these braces, foo wouldn't exist
    }

    
}

int main(int argc, const char * argv[])
{
    int totalWeight = 10;
    int gibletsWeight = 1;
    int turkeyWeight = totalWeight - gibletsWeight;
    showCookTimeForTurkey(turkeyWeight);
    return 0;
}

