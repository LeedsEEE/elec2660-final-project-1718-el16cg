//
//  FirstViewController.m
//  Grounding_project el16cg
//
//  Created by Conor Gilbert [el16cg] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "HomeViewController.h"
#import "draw_view.h"

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

// guided grounding is used to bring the users through all three parts and was designed with the idea that in an anxiety attack, the user will need that little extra guidance to get them started
- (IBAction)guidedGroundingPressed:(id)sender {
   int guidedGroundingEnabled =1;
    
    UIStoryboard *main = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [main instantiateViewControllerWithIdentifier:@"questions"];
    [self presentViewController:vc animated:YES completion:nil];
    
}


@end
