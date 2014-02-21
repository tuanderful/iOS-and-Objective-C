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
}

@property (readonly) int year;
@property (readonly) NSString *make;
@property (readonly) NSString *model;
@property (getter = isShowingLiters) BOOL showLiters;
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

- (void)printCarInfo;
- (void)shoutMake;


@end
