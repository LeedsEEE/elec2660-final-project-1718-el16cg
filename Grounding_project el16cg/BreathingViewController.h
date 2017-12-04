//
//  BreathingViewController.h
//  Grounding_project el16cg
//
//  Created by Conor Gilbert [el16cg] on 24/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BreathingViewController : UIViewController


-(void) handleTimer1:(NSTimer *)timer;


//-(void) handleTimer2:(NSTimer *)timer;

@property int d;
@property (weak, nonatomic) IBOutlet UIImageView *circlesLarge;
@property (weak, nonatomic) IBOutlet UIImageView *circlesMedium;
@property (weak, nonatomic) IBOutlet UIImageView *circlesSmall;
@property (weak, nonatomic) IBOutlet UILabel *breath;
@property (weak, nonatomic) IBOutlet UIImageView *circlesLargest;
@property (weak, nonatomic) IBOutlet UIImageView *circlesSmallest;


@end
