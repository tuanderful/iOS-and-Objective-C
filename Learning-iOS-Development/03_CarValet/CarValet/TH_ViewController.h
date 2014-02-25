//
//  TH_ViewController.h
//  CarValet
//
//  Created by Tuan Huynh on 2/13/14.
//  Copyright (c) 2014 Tuan Huynh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TH_ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *totalCarsLabel;
@property (weak, nonatomic) IBOutlet UILabel *carNumberLabel;
@property (weak, nonatomic) IBOutlet UILabel *carInfoLabel;

- (IBAction)newCar:(id)sender;
- (IBAction)previousCar:(id)sender;
- (IBAction)nextCar:(id)sender;


@end
