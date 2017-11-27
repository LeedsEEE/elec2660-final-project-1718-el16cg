//
//  SecondViewController.h
//  Grounding_project el16cg
//
//  Created by Conor Gilbert [el16cg] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface QuestionViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *QuestionBox;
@property (weak, nonatomic) IBOutlet UILabel *answer1;
@property (weak, nonatomic) IBOutlet UITextField *AnswerBox;
@property (weak, nonatomic) IBOutlet UIButton *submitPressed;
@property (strong, nonatomic) AVSpeechSynthesizer *synthesizer;

- (IBAction)AnswerBox:(UITextField *)sender;


- (IBAction)backgroundPressed:(id)sender;

- (IBAction)submitPressed:(id)sender;

@end

