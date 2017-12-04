//
//  LevellingViewController.h
//  Grounding_project el16cg
//
//  Created by Conor Gilbert [el16cg] on 23/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "gyroscopeDataModel.h"
@interface LevellingViewController : UIViewController

@property (nonatomic, strong) gyroscopeDataModel* gyro;
@property (weak, nonatomic) IBOutlet UIImageView *bar0;
@property (weak, nonatomic) IBOutlet UIImageView *bar15;
@property (weak, nonatomic) IBOutlet UIImageView *bar30;
@property (weak, nonatomic) IBOutlet UIImageView *bar45;
@property (weak, nonatomic) IBOutlet UIImageView *bar60;
@property (weak, nonatomic) IBOutlet UIImageView *bar75;
@property (weak, nonatomic) IBOutlet UIImageView *bar90;
@property (weak, nonatomic) IBOutlet UIImageView *barNeg15;
@property (weak, nonatomic) IBOutlet UIImageView *barNeg30;
@property (weak, nonatomic) IBOutlet UIImageView *barNeg45;
@property (weak, nonatomic) IBOutlet UIImageView *barNeg60;
@property (weak, nonatomic) IBOutlet UIImageView *barNeg75;
@property (weak, nonatomic) IBOutlet UIImageView *barNeg90;


@end
