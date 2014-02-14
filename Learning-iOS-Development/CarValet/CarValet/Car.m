//
//  Car.m
//  CarValet
//
//  Created by Tuan Huynh on 2/13/14.
//  Copyright (c) 2014 Tuan Huynh. All rights reserved.
//
//  Notes
//  - Calling Functions => "Message Sending" or "Performing a Selector"
//

#import "Car.h"

@implementation Car {
    BOOL    isALemon;           // curly braces after implementation => local instance variable
}

// first thing to implement is init
- (id)init
{
    self = [super init];        // Always initialize the superclass first.
    if (self != nil) {
        _year = 1900;
        _fuelAmount = 0.0f;
    }
    return self;
}

// "Base Initializer" pattern
- (id)initWithMake: (NSString *)make
             model: (NSString *)model
              year: (int)year
        fuelAmount: (float)fuelAmount
{
    
    self = [super init];

    if (self != nil) {
        _make= make;
        _model = model;
        _year = year;
        _fuelAmount = fuelAmount;
    }
    
    return self;
}

- (void)printCarInfo
{
    // Note that we don't check for year or fuelAmount. When we
    //  initialize, either we do a full initialization [initWithMake]
    //  or we call the [init], which defaults the year and fuel amount.
    if(!_make) return;
    if(!_model) return;
    
    NSLog(@"Car Make: %@", _make);                                  // NSLog is wrapper around printf
    NSLog(@"Car Model: %@", _model);                                // Print Objects: %@
    NSLog(@"Car Year: %d", _year);                                  // Log Integer: %d
    NSLog(@"Number of Gallons in Tank: %0.2f", _fuelAmount);        // Log & Format Float: %0.2f
}

// Accessor Methods
- (float)fuelAmount
{
    return _fuelAmount;
}

- (int)year
{
    return _year;
}

- (NSString*)make
{
    return [_make copy];          // returning objects: make a copy
}

- (NSString*)model
{
    return [_model copy];
}


- (void)setFuelAmount: (float)fuelAmount
{
    _fuelAmount = fuelAmount;
}

@end
