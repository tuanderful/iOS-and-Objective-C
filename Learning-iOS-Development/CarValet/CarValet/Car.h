//
//  Car.h
//  CarValet
//
//  Created by Tuan Huynh on 2/13/14.
//  Copyright (c) 2014 Tuan Huynh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject {
    int _year;                                  // use an underscore to denote instance variables
    NSString *_make;
    NSString *_model;
    float _fuelAmount;
}


// Constructor
- (id)initWithMake: (NSString *)make
             model: (NSString *)model
              year: (int)year
        fuelAmount: (float)fuelAmount;

// Methods
- (void)printCarInfo;
- (float)fuelAmount;
- (void)setFuelAmount: (float)fuelAmount;
- (int)year;
- (NSString*)make;
- (NSString*)model;


@end
