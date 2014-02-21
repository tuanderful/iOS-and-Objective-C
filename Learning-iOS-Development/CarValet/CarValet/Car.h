//
//  Car.h
//  CarValet
//
//  Created by Tuan Huynh on 2/13/14.
//  Copyright (c) 2014 Tuan Huynh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject {
    // here, we define local instance variables

    //int _year;                  // convention: use an underscore to denote instance variables (_year), where year is getter
    //NSString *_make;            // NSString is an object, so * denotes _make is pointer to an object
    //NSString *_model;           // NS stands for NeXTStep, NeXT computer's OS.
    //float _fuelAmount;
}

@property (readonly) int year;
@property (readonly) NSString *make;
@property (readonly) NSString *model;
@property (getter = isShowingLiters) BOOL showLiters;  //define a custom getter, because myCar.isShowingLiters is better than myCar.showLiters
@property (setter = setTheFuelAmountTo:, nonatomic) float fuelAmount;


// - Denotes instance methods. Invoke with [myCar printCarInfo]
// + Denotes class methods. Invoke with [Car someMethod]

// custom init method
- (id)initWithMake: (NSString *)make
             model: (NSString *)model
              year: (int)year
        fuelAmount: (float)fuelAmount;

- (id)initWithMake: (NSString *)make
              year: (int)year
        fuelAmount: (float)fuelAmount;

- (id)initWithModel: (NSString *)model
               year: (int)year
         fuelAmount: (float)fuelAmount;

// Methods - removed getter/setter once we defined @property
- (void)printCarInfo;
//- (float)fuelAmount;
//- (void)setFuelAmount: (float)fuelAmount;
//- (int)year;
//- (NSString*)make;
//- (NSString*)model;
- (void)shoutMake;


@end
