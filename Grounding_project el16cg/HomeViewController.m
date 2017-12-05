//
//  FirstViewController.m
//  Grounding_project el16cg
//
//  Created by Conor Gilbert [el16cg] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController
int guidedGroundingEnabled =0;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)guidedGroundingPressed:(id)sender {
   int guidedGroundingEnabled =1;
}


@end
