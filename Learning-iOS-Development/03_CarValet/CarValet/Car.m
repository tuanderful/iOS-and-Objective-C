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

// We redefine the interface so that these variables are read/write within the class
@interface Car ()
@property (readwrite) int year;
@property NSString *make;
@property NSString *model;
@end

@implementation Car {
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

- (id)initWithMake: (NSString *)make
              year: (int)year
        fuelAmount: (float)fuelAmount
{
    
    self = [super init];
    
    if (self != nil) {
        _make= make;
        _year = year;
        _fuelAmount = fuelAmount;
    }
    
    return self;
}

- (id)initWithModel: (NSString *)model
              year: (int)year
        fuelAmount: (float)fuelAmount
{
    
    self = [super init];
    
    if (self != nil) {
        _model = model;
        _year = year;
        _fuelAmount = fuelAmount;
    }
    
    return self;
}

- (void)printCarInfo
{
    NSString *fuelType = self.isShowingLiters ? @"Liters" : @"Gallons";

    if (!self.make && !self.model) {
        NSLog(@"Car undefined: no make or model specified.");
    } else if (!self.make) {
        NSLog(@"Car undefined: no make specified.");
    } else if (!self.model) {
        NSLog(@"Car undefined: no model specified.");
    } else {
        NSLog(@"Car Make: %@", self.make);
        NSLog(@"Car Model: %@", self.model);
        NSLog(@"Car Year: %d", self.year);
        NSLog(@"Number of %@ in Tank: %0.2f", fuelType, self.fuelAmount);
    }
}

- (void)shoutMake
{
    self.make = [self.make uppercaseString];
}

// override (auto-generated, or "synthesized") getter for fuelAmount
- (float)fuelAmount {
    if (self.isShowingLiters) {
        return (_fuelAmount * 3.7854);
    }
    return _fuelAmount;
}

@end
