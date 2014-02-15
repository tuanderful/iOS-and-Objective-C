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
    if(self.make && self.model) {
        // We could access with _make, or use dot notation (self.make) after defining properties
        NSLog(@"Car Make: %@", self.make);                                  // NSLog is wrapper around printf
        NSLog(@"Car Model: %@", self.model);                                // Print Objects: %@
        NSLog(@"Car Year: %d", self.year);                                  // Log Integer: %d
        NSLog(@"Number of Gallons in Tank: %0.2f", self.fuelAmount);        // Log & Format Float: %0.2f
    } else {
        NSLog(@"Car undefined: no make or model specified.");
    }
}

// Accessor Methods
// We can replace these accessor methods by using @property in the @interface
// This creates the _fuelAmount instance variable, a (float)fuelAmount accessor
// and a (void)setFuelAmount: (float)fuelAmount mutator (at compile time)

//- (float)fuelAmount
//{
//    return _fuelAmount;
//}
//
//- (int)year
//{
//    return _year;
//}
//
//- (NSString*)make
//{
//    return [_make copy];          // returning objects: make a copy
//}
//
//- (NSString*)model
//{
//    return [_model copy];
//}
//
//
//- (void)setFuelAmount: (float)fuelAmount
//{
//    _fuelAmount = fuelAmount;
//}

@end
