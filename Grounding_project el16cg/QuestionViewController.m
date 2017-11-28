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

    if (x==1) {
    
    
    self.answer1.text =[NSString stringWithFormat:@"%d - %@",x, self.AnswerBox.text];
        
        x=x+1;
        
        self.QuestionBox.text = @"question2";
        
    }
    else if (x==2) {
        
        
        
        self.answer2.text =[NSString stringWithFormat:@"%d - %@",x, self.AnswerBox.text];
        
        x=x+1;
        
        
        self.QuestionBox.text = @"question3";
    
    }
    else if (x==3) {
        
        
        
        self.answer3.text =[NSString stringWithFormat:@"%d - %@",x, self.AnswerBox.text];
        
        x=x+1;
        self.QuestionBox.text = @"question4";
        
    }
    else if (x==4) {
        
        
        
        self.answer4.text =[NSString stringWithFormat:@"%d - %@",x, self.AnswerBox.text];
        
        x=x+1;
        self.QuestionBox.text = @"question5";
        
    }
    else if (x==5) {
        
        
        
        self.answer5.text =[NSString stringWithFormat:@"%d - %@",x, self.AnswerBox.text];
        
        x=x+1;
        self.QuestionBox.text = @"question6";
        
    }
    else if (x==6) {
        
        
        
        self.answer6.text =[NSString stringWithFormat:@"%d - %@",x, self.AnswerBox.text];
        
        x=x+1;
        self.QuestionBox.text = @"question7";
        
    }
    else if (x==7) {
        
        
        
        self.answer7.text =[NSString stringWithFormat:@"%d - %@",x, self.AnswerBox.text];
        
        x=x+1;
        self.QuestionBox.text = @"question8";
        
    }
    else if (x==8) {
        
        
        
        self.answer8.text =[NSString stringWithFormat:@"%d - %@",x, self.AnswerBox.text];
        
        x=x+1;
        self.QuestionBox.text = @"question9";
        
    }
    else if (x==9) {
        
        
        
        self.answer9.text =[NSString stringWithFormat:@"%d - %@",x, self.AnswerBox.text];
        
        x=x+1;
        self.QuestionBox.text = @"question10";
        
    }
    else if (x==10) {
        
        
        
        self.answer10.text =[NSString stringWithFormat:@"%d - %@",x, self.AnswerBox.text];
        
        x=x+1;
        self.QuestionBox.text = @"question11";
        
    }
    else if (x==11) {
        
        
        
        self.answer11.text =[NSString stringWithFormat:@"%d - %@",x, self.AnswerBox.text];
        
        x=x+1;
        self.QuestionBox.text = @"No more Questions";
        
    }
    
    
}
@end
