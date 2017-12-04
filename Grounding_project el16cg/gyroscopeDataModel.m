//
//  gyroscopeDataModel.m
//  Grounding_project el16cg
//
//  Created by Conor Gilbert [el16cg] on 04/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "gyroscopeDataModel.h"

@implementation gyroscopeDataModel

-(void)startGyro{
    self.motionManager=[[CMMotionManager alloc] init];
    self.motionManager.deviceMotionUpdateInterval=1.0/60.0;
    [self.motionManager startDeviceMotionUpdatesUsingReferenceFrame:CMAttitudeReferenceFrameXArbitraryCorrectedZVertical];

}

-(float)updateData{
    
    CMDeviceMotion *deviceMotion = self.motionManager.deviceMotion;
    
    CMAttitude *attitude = deviceMotion.attitude;
    
    float yaw = attitude.yaw;
    
    return yaw;
}

-(void)stop{
    [self.motionManager stopDeviceMotionUpdates];
    self.motionManager = nil;
}



@end
