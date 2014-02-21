//
//  HybridCar.h
//  CarValet
//
//  Created by Tuan Huynh on 2/15/14.
//  Copyright (c) 2014 Tuan Huynh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

@interface HybridCar : Car

@property (nonatomic) float milesPerGallon;

- (float)milesUntilEmpty;

- (id)initWithMake: (NSString *)make
             model: (NSString *)model
              year: (int)year
        fuelAmount: (float)fuelAmount
               MPG: (float)MPG;

@end
