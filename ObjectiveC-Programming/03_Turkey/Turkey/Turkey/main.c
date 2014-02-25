//
//  main.c
//  Turkey
//
//  Created by Tuan Huynh on 2/25/14.
//  Copyright (c) 2014 Tuan Huynh. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    float weight;
    weight = 14.2;
    
    // Let %f be a placeholder for a float,
    // then CDL of arguments for placeholders
    printf("The turkey weighs %f.\n", weight);
    
    float cookingTime;
    
    cookingTime = 15.0 + 15.0 * weight;
    printf("Cook it for %f minutes.\n", cookingTime);
    
    
    // ============================================================= Chapter 3 Challenge
    // Style: Should declare type on each line, 1 variable per line.
    float foo = 3.14;
    float bar = 42.0;
    
    float sum = foo + bar;
    
    printf("Sum is %f", sum);
    // double operands, double sum = 45.14
    // double operands, float sum  = 45.139999
    // float operands,  float sum  = 45.139999
    // float operands,  double sum = 45.139999
    
    // End function
    return 0;
}

