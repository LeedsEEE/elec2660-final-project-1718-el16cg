//
//  BreathingViewController.m
//  Grounding_project el16cg
//
//  Created by Conor Gilbert [el16cg] on 24/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "BreathingViewController.h"

@interface BreathingViewController ()

@end

@implementation BreathingViewController

int c=100;
//rate of change of d
int d=0;
//rate of change of r
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.circlesLarge.hidden= true;
    self.circlesMedium.hidden= true;
    self.circlesSmallest.hidden= false;
    self.circlesLargest.hidden= true;
    self.circlesSmall.hidden= true;
             NSTimer *timer;
    
             timer = [NSTimer scheduledTimerWithTimeInterval: 1.5
                                                      target: self
                                                    selector: @selector(handleTimer1:)
                                                    userInfo: nil
                                                     repeats: YES];}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




-(void)handleTimer1:(NSTimer *)timer {
    d=d+c;
    if(d>200){
        
        
        c=-c;
    }
    
    else if (d<0) {c=-c;
    }
    
    NSLog(@" %d",d);
    if (d==-100) {
        self.circlesLarge.hidden= true;
        self.circlesMedium.hidden= true;
        self.circlesSmall.hidden= true;
        self.circlesLargest.hidden= true;
        self.circlesSmallest.hidden= false;
        
        self.breath.text= @"Breathe in";
        
        
    }
    
    if (d==0) {
        self.circlesLarge.hidden= true;
        self.circlesMedium.hidden= true;
        self.circlesSmall.hidden= false;
        self.circlesLargest.hidden= true;
        self.circlesSmallest.hidden= true;
       
        
        
    }
    
    
    if (d==100) {
        self.circlesLarge.hidden= true;
        self.circlesMedium.hidden= false;
        self.circlesSmall.hidden= true;
        self.circlesLargest.hidden= true;
        self.circlesSmallest.hidden= true;
    }
    
    
    
    
    
    if (d==200) {
        self.circlesLarge.hidden= false;
        self.circlesMedium.hidden= true;
        self.circlesSmall.hidden= true;
        self.circlesLargest.hidden= true;
        self.circlesSmallest.hidden= true;
        
        ;
        
        
    }
    
    if (d==300) {
        self.circlesLarge.hidden= true;
        self.circlesMedium.hidden= true;
        self.circlesSmall.hidden= true;
        self.circlesLargest.hidden= false;
        self.circlesSmallest.hidden= true;
        
        self.breath.text= @"Breathe out";
        
        
    }
    
    
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
