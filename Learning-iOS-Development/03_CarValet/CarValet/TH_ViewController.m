//
//  TH_ViewController.m
//  CarValet
//
//  Created by Tuan Huynh on 2/13/14.
//  Copyright (c) 2014 Tuan Huynh. All rights reserved.
//

#import "TH_ViewController.h"
#import "Car.h"
#import "HybridCar.h"

@interface TH_ViewController ()

@end

@implementation TH_ViewController {
    // local instance variables
    NSMutableArray *arrayOfCars;
    NSInteger displayedCarIndex;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    arrayOfCars = [[NSMutableArray alloc] init];
    displayedCarIndex = 0;
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.totalCarsLabel.text = @"New Text!";

    // Challenge 2.1
    Car *carA = [[Car alloc] init];
    [carA printCarInfo];
    
    Car *carB = [[Car alloc] initWithMake:@"Honda"
                                     year:2010
                               fuelAmount:12.5f];
    [carB printCarInfo];
    
    Car *carC = [[Car alloc] initWithModel:@"Pinto"
                                      year:2010
                                fuelAmount:12.5f];
    [carC printCarInfo];
    
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
    [otherCar shoutMake];
    otherCar.showLiters = YES;
    [otherCar printCarInfo];
    
    Car *myHybrid = [[HybridCar alloc] initWithMake:@"Toyota"
                                              model:@"Prius"
                                               year:2012
                                         fuelAmount:8.3f
                                                MPG:42.0f];
    // showLiters defaults to NO
    [myHybrid printCarInfo];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)newCar:(id)sender {
    Car *newCar = [[Car alloc] init];
    
}

- (IBAction)previousCar:(id)sender {
}

- (IBAction)nextCar:(id)sender {
}
@end
