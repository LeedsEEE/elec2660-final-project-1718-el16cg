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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.gyro.startGyro;
    
    float z= self.gyro.updateData;
    
    
    
    
    
    
}

- (void) viewDidDisappear:(BOOL)animated{
    self.gyro.stop;
}

//while(1) (


          






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

@end
