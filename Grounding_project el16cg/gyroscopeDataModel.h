//
//  gyroscopeDataModel.h
//  Grounding_project el16cg
//
//  Created by Conor Gilbert [el16cg] on 04/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreMotion/CoreMotion.h>
@interface gyroscopeDataModel : NSObject

-(void)startGyro;
-(float)updateData;
-(void)stop;

@property (nonatomic,strong) CMMotionManager* motionManager;




@end
