//
//  SecondViewController.m
//  Grounding_project el16cg
//
//  Created by Conor Gilbert [el16cg] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "QuestionViewController.h"

@interface QuestionViewController ()

@end

@implementation QuestionViewController
int x = 1;
- (void)viewDidLoad {
    [super viewDidLoad];
     //self.synthesizer = [[AVSpeechSynthesizer alloc] init];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)MicButton:(id)sender {
    AVSpeechUtterance *utterance = [[AVSpeechUtterance alloc] initWithString:@"Hello"];
    [self.synthesizer speakUtterance:utterance];
    [self.synthesizer speakUtterance:[AVSpeechUtterance speechUtteranceWithString:self.QuestionBox.text]];

}

- (IBAction)AnswerBox:(UITextField *)sender {
    
    NSLog(@"Answer %d - %@",x, self.AnswerBox.text);
    
}

- (IBAction)backgroundPressed:(id)sender {
    
    if([self.AnswerBox isFirstResponder]) {
        [self.AnswerBox resignFirstResponder];
    }
    
   
    
}

- (IBAction)submitPressed:(id)sender {

    self.answer1.text =[NSString stringWithFormat:@"Answer %d - %@",x, self.AnswerBox.text];
    
    
}
@end
