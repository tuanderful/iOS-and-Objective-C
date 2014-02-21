//
//  HybridCar.m
//  CarValet
//
//  Created by Tuan Huynh on 2/15/14.
//  Copyright (c) 2014 Tuan Huynh. All rights reserved.
//

#import "HybridCar.h"

@implementation HybridCar

- (id)init
{
    self = [super init];        // Always initialize the superclass first.
    if (self != nil) {
        _milesPerGallon = 0.0f;
    }
    return self;
}

- (id)initWithMake: (NSString *)make
             model: (NSString *)model
              year: (int)year
        fuelAmount: (float)fuelAmount
               MPG: (float)MPG
{
    // initialize the parent class' initWithMake
    self = [super initWithMake:make model:model year:year fuelAmount:fuelAmount];
    
    if (self != nil) {
        // This is why MPG doesn't have to match _milesPerGallon. It's just an arg for the constructor,
        // not necessarily the name of the iVar
        _milesPerGallon = MPG;
    }
    
    return self;
}


- (void)printCarInfo
{
    [super printCarInfo];

    NSLog(@"Miles per Gallon: %0.2f", self.milesPerGallon);
    
    if (self.milesPerGallon > 0.0f) {
        NSLog(@"Miles until empty: %0.2f", [self milesUntilEmpty]);
    }
    
}


- (float)milesUntilEmpty {
    return self.milesPerGallon * self.fuelAmount;
}



@end
