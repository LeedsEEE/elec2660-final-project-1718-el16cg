//
//  LevellingViewController.m
//  Grounding_project el16cg
//
//  Created by Conor Gilbert [el16cg] on 23/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "LevellingViewController.h"

@interface LevellingViewController ()

@end



@implementation LevellingViewController

// bars are the green bars and line refers to the black line

int score =0;
// score
int zAngle = 0;
// the angle the bar is currently sitting at
float z =0.0;
#pragma mark - viewDidLoad
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  
        
        self.scoreLabel.text =[NSString stringWithFormat:@"Score - %d ",score];
 
    
    
    self.bar0.hidden= true;
    self.bar15.hidden= true;
    self.bar30.hidden= true;
    self.bar45.hidden= true;
    self.bar60.hidden= true;
    self.bar75.hidden= true;
    self.bar90.hidden= true;
    self.barNeg15.hidden= true;
    self.barNeg30.hidden= true;
    self.barNeg45.hidden= true;
    self.barNeg60.hidden= true;
    self.barNeg75.hidden= true;
    self.barNeg90.hidden= true;
    self.line0.hidden= true;
    self.line15.hidden= true;
    self.line30.hidden= true;
    self.line45.hidden= true;
    self.line60.hidden= true;
    self.line75.hidden= true;
    self.line90.hidden= true;
    self.lineNeg15.hidden= true;
    self.lineNeg30.hidden= true;
    self.lineNeg45.hidden= true;
    self.lineNeg60.hidden= true;
    self.lineNeg75.hidden= true;
    self.lineNeg90.hidden= true;
    
    // sets all images to hidden
    
    
}
-(void) randomNumber{
    
    self.random= arc4random() % 12;
    nil;
   // random number controls which bar will be shown
    
}
- (void) viewDidDisappear:(BOOL)animated{
    self.gyro.stop;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)ShowBar:(int)bar{
    self.bar0.hidden= bar != 0;
    self.bar15.hidden= bar != 1;
    self.bar30.hidden= bar != 2;
    self.bar45.hidden= bar != 3;
    self.bar60.hidden= bar != 4;
    self.bar75.hidden= bar != 5;
    self.bar90.hidden= bar != 6;
    self.barNeg15.hidden= bar != 7;
    self.barNeg30.hidden= bar != 8;
    self.barNeg45.hidden= bar != 9;
    self.barNeg60.hidden= bar != 10;
    self.barNeg75.hidden= bar != 11;
    self.barNeg90.hidden= bar != 12;
}

-(void)ShowLine:(int) line{
    self.line0.hidden= line != 0;
    self.line15.hidden= line != 1;
    self.line30.hidden= line != 2;
    self.line45.hidden= line != 3;
    self.line60.hidden= line != 4;
    self.line75.hidden= line != 5;
    self.line90.hidden= line != 6;
    self.lineNeg15.hidden= line != 7;
    self.lineNeg30.hidden= line != 8;
    self.lineNeg45.hidden= line != 9;
    self.lineNeg60.hidden= line != 10;
    self.lineNeg75.hidden= line != 11;
    self.lineNeg90.hidden= line != 12;
}

-(void)IncrementScore{
    score += 1;
    [self randomNumber];
    zAngle =(int)(self.random*15)-90;
    //zangle is determined by the random number
    NSLog(@"Score= %d", score);
    self.scoreLabel.text =[NSString stringWithFormat:@"Score - %d ",score];
}

#pragma mark - function top
- (IBAction)leveller:(id)sender {
    //the angle 0degrees is determined on the z axis by drawing an axis through the phone perpendicular to the ground, this action allows for the z axis to be dawn when the phone is in the desired position to properly callibrate it
    self.gyro.startGyro;
    
    [self randomNumber];
    zAngle=(int)(self.random*15)-90;
    
    NSTimer *timer;
    timer = [NSTimer scheduledTimerWithTimeInterval: 0.1
                                                      target: self
                                                    selector: @selector(update:)
                                                    userInfo: nil
                                                     repeats: YES];
}
#pragma mark - gyro update
-(void)update:(NSTimer *)callingTimer{
    float zActual= self.gyro.updateData;
    // zActual is the angle the phone is being tilted at
//    float zActual = _LevelSlider.value * 200.0 - 100.0;
//    // the float is purely for testing purposes and simulates the phone being tilted ,uncomment if tilting a phone is not possible and comment the lines above the slider
    NSLog(@"random= %ld",self.random);
    NSLog(@"angle= %d",zAngle);
   // upon the line and bars meeting, adds a point to the score and randomises and resets the bar with the new location
    
    
    NSArray *angles = [NSArray arrayWithObjects:@0, @15, @30, @45, @60, @75, @90, @(-15), @(-30), @(-45), @(-60), @(-75), @(-90), nil];
    
    for(int i = 0; i < angles.count; i++){
        if(([angles[i] intValue] - 5) <= zActual && ([angles[i] intValue] + 5) >= zActual){
            [self ShowLine:i];
        }
        if([angles [i] intValue] == zAngle){
            [self ShowBar:i];
        }
    }
    if(zAngle - 5 <= zActual && zAngle + 5 >= zActual){
        [self IncrementScore];
        NSLog(@">>ZACTUAL = ZANGLE");
        NSLog(@">>ZANGLE AFTER MATCH: %d", zAngle);
    }
}



@end
