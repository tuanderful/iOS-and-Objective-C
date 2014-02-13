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
- (id)init {
    self = [super init];        // Always initialize the superclass first.
    if (self != nil) {
        _year = 1900;
        _fuelAmount = 0.0f;
    }
    return self;
}

@end
