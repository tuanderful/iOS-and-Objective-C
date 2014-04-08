//
//  main.c
//  BeerSong
//
//  Created by Tuan Huynh on 4/6/14.
//  Copyright (c) 2014 Tuan Huynh. All rights reserved.
//

#include <stdio.h>

void singSongFor(int numberOfBottles) {
    if (numberOfBottles == 0) {
        printf("There are simply no more bottles of beer on the wall.\n\n");

        // click on wide gray column to set breakpoint
    } else {
        printf("%d bottles of beer on the wall, %d bottles of beer.\n", numberOfBottles, numberOfBottles);
        
        int oneFewer = numberOfBottles - 1;
        printf("Take one down, pass it around, %d bottles of beer on the wall.\n\n", oneFewer);
        
        singSongFor(oneFewer);  // recursion
        
        // Print a message just before the function ends.
        // These messages won't be called until the song is all over -> step out of the last loop
        printf("Put a bottle in the recycling, %d empty bottles in the bin.\n", numberOfBottles);
        
    }
    
}

int main(int argc, const char * argv[])
{
    singSongFor(5);
    return 0;
}

