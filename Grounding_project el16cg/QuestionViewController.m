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

// x is the question number currently being asked ie starts at one
- (void)viewDidLoad {
    [super viewDidLoad];
     self.synthesizer = [[AVSpeechSynthesizer alloc] init];
    // Do any additional setup after loading the view, typically from a nib.
    
  
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - voice synthesiser
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
#pragma mark - answer submission
// when an answer is submitted it pastes the answer in an answer box and displays the next question
- (IBAction)submitPressed:(id)sender {

    if (x==1) {
    
    
    self.answer1.text =[NSString stringWithFormat:@"%d - %@",x, self.AnswerBox.text];
        
        x=x+1;
        
        self.QuestionBox.text = @"How old are you?";
        
    }
    else if (x==2) {
        
        
        
        self.answer2.text =[NSString stringWithFormat:@"%d - %@",x, self.AnswerBox.text];
        
        x=x+1;
        
        
        self.QuestionBox.text = @"What day of the week is it?";
    
    }
    else if (x==3) {
        
        
        
        self.answer3.text =[NSString stringWithFormat:@"%d - %@",x, self.AnswerBox.text];
        
        x=x+1;
        self.QuestionBox.text = @"What colour top are you wearing?";
        
    }
    else if (x==4) {
        
        
        
        self.answer4.text =[NSString stringWithFormat:@"%d - %@",x, self.AnswerBox.text];
        
        x=x+1;
        self.QuestionBox.text = @"How many lights are there on the room?";
        
    }
    else if (x==5) {
        
        
        
        self.answer5.text =[NSString stringWithFormat:@"%d - %@",x, self.AnswerBox.text];
        
        x=x+1;
        self.QuestionBox.text = @"How many yellow objects can you see?";
        
    }
#pragma mark - question 6
    else if (x==6) {
        
        
        
        self.answer6.text =[NSString stringWithFormat:@"%d - %@",x, self.AnswerBox.text];
        
        x=x+1;
        self.QuestionBox.text = @"Name something you can see";
        
    }
    else if (x==7) {
        
        
        
        self.answer7.text =[NSString stringWithFormat:@"%d - %@",x, self.AnswerBox.text];
        
        x=x+1;
        self.QuestionBox.text = @"Something you can touch";
        
    }
    else if (x==8) {
        
        
        
        self.answer8.text =[NSString stringWithFormat:@"%d - %@",x, self.AnswerBox.text];
        
        x=x+1;
        self.QuestionBox.text = @"Something you can hear";
        
    }
    else if (x==9) {
        
        
        
        self.answer9.text =[NSString stringWithFormat:@"%d - %@",x, self.AnswerBox.text];
        
        x=x+1;
        self.QuestionBox.text = @"Something you can smell";
        
    }
    else if (x==10) {
        
        
        
        self.answer10.text =[NSString stringWithFormat:@"%d - %@",x, self.AnswerBox.text];
        
        x=x+1;
        self.QuestionBox.text = @"Something you can taste";
        
    }
    else if (x==11) {
        
        
        
        self.answer11.text =[NSString stringWithFormat:@"%d - %@",x, self.AnswerBox.text];
        
        x=x+1;
        self.QuestionBox.text = @"No more Questions";
        // submitting answers after this will no longer display questions
    }
    
    
}
@end
