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
@property (weak, nonatomic) IBOutlet UILabel *answer2;
@property (weak, nonatomic) IBOutlet UILabel *answer3;
@property (weak, nonatomic) IBOutlet UILabel *answer4;
@property (weak, nonatomic) IBOutlet UILabel *answer5;
@property (weak, nonatomic) IBOutlet UILabel *answer6;
@property (weak, nonatomic) IBOutlet UILabel *answer7;
@property (weak, nonatomic) IBOutlet UILabel *answer8;
@property (weak, nonatomic) IBOutlet UILabel *answer9;
@property (weak, nonatomic) IBOutlet UILabel *answer10;
@property (weak, nonatomic) IBOutlet UILabel *answer11;
@property (weak, nonatomic) IBOutlet UITextField *AnswerBox;
@property (weak, nonatomic) IBOutlet UIButton *submitPressed;
@property (strong, nonatomic) AVSpeechSynthesizer *synthesizer;

- (IBAction)AnswerBox:(UITextField *)sender;


- (IBAction)backgroundPressed:(id)sender;

- (IBAction)submitPressed:(id)sender;




@end

