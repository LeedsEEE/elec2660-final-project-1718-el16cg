//
//  draw_view.h
//  Grounding_project el16cg
//
//  Created by Conor Gilbert [el16cg] on 24/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <SpriteKit/SpriteKit.h>
#import "BreathingViewController.h"

@interface draw_view : UIView

-(void) handleTimer1:(NSTimer *)timer;

@property BreathingViewController* BVC;

@end
