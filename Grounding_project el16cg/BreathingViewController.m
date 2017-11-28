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

int c=1;

int d=0;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
   // if(d<200){
    
    
    
             NSTimer *timer;
    
             timer = [NSTimer scheduledTimerWithTimeInterval: 0.005
                                                      target: self
                                                    selector: @selector(handleTimer1:)
                                                    userInfo: nil
                                                     repeats: YES];}

//
//     else if (d>0){
//    
//         [NSTimer scheduledTimerWithTimeInterval: 0.005
//                                             target: self
//                                           selector: @selector(handleTimer2:)
//                                           userInfo: nil
//                                            repeats: NO];}
//
//
//
//
//
//



    
    
    


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
