//
//  TH_ViewController.m
//  CarValet
//
//  Created by Tuan Huynh on 2/13/14.
//  Copyright (c) 2014 Tuan Huynh. All rights reserved.
//

#import "TH_ViewController.h"
#import "Car.h"

@interface TH_ViewController ()

@end

@implementation TH_ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    //Car *myCar = [[Car alloc] init];
    
    //[myCar printCarInfo];

    //myCar.make = @"Ford";
    //myCar.model = @"Escape";
    //myCar.year = 2014;
    //myCar.fuelAmount = 10.0f;
    
    //[myCar printCarInfo];
    
    Car *otherCar = [[Car alloc] initWithMake:@"Honda"
                                        model:@"Accord"
                                         year:2010
                                   fuelAmount:12.5f];
    
    //[otherCar printCarInfo];
    
    [otherCar shoutMake];
    
    //otherCar.showLiters = NO;
    [otherCar printCarInfo];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
