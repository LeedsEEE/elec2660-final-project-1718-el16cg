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



int score =0;
float z =0.0;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.nextSectionImage.hidden= true;
    
    if (self.home.guidedGroundingEnabled ==1) {
        
        
        self.nextSectionImage.hidden= false;
        
        self.scoreLabel.text =[NSString stringWithFormat:@"Score - %d ",score];
 
    }
    
    self.bar0.hidden= true;
    self.bar15.hidden= true;
    self.bar30.hidden= true;
    self.bar45.hidden= true;
    self.bar60.hidden= true;
    self.bar75.hidden= true;
    self.bar90.hidden= true;
    self.barNeg15.hidden= true;
    self.barNeg30.hidden= true;
    self.barNeg45.hidden= true;
    self.barNeg60.hidden= true;
    self.barNeg75.hidden= true;
    self.barNeg90.hidden= true;
    self.line0.hidden= true;
    self.line15.hidden= true;
    self.line30.hidden= true;
    self.line45.hidden= true;
    self.line60.hidden= true;
    self.line75.hidden= true;
    self.line90.hidden= true;
    self.lineNeg15.hidden= true;
    self.lineNeg30.hidden= true;
    self.lineNeg45.hidden= true;
    self.lineNeg60.hidden= true;
    self.lineNeg75.hidden= true;
    self.lineNeg90.hidden= true;
    
    
    
    
}
-(void) randomNumber{
    
    self.random= arc4random() % 12;
    nil;
   
    
}
- (void) viewDidDisappear:(BOOL)animated{
    self.gyro.stop;
}

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
#pragma mark - function top
- (IBAction)leveller:(id)sender {
    
    self.gyro.startGyro;
    
    float zActual= self.gyro.updateData;
    [self randomNumber];
    int zAngle=(self.random*15)-90;
    NSLog(@"random= %ld",self.random);
       NSLog(@"angle= %d",zAngle);
    
#pragma mark -90
    if (zAngle==-90){
       
        self.bar0.hidden= true;
        self.bar15.hidden= true;
        self.bar30.hidden= true;
        self.bar45.hidden= true;
        self.bar60.hidden= true;
        self.bar75.hidden= true;
        self.bar90.hidden= true;
        self.barNeg15.hidden= true;
        self.barNeg30.hidden= true;
        self.barNeg45.hidden= true;
        self.barNeg60.hidden= true;
        self.barNeg75.hidden= true;
        self.barNeg90.hidden= false;
        
        if (-85>=zActual && -95<=zActual){
        
            self.line0.hidden= true;
            self.line15.hidden= true;
            self.line30.hidden= true;
            self.line45.hidden= true;
            self.line60.hidden= true;
            self.line75.hidden= true;
            self.line90.hidden= true;
            self.lineNeg15.hidden= true;
            self.lineNeg30.hidden= true;
            self.lineNeg45.hidden= true;
            self.lineNeg60.hidden= true;
            self.lineNeg75.hidden= true;
            self.lineNeg90.hidden= false;
            
            score=score+1;
            
            
            [self randomNumber];
            
           zAngle =(self.random*15)-90;
            NSLog(@"Score= %d", score);

            self.scoreLabel.text =[NSString stringWithFormat:@"Score - %d ",score];
        }
        if (-70>=zActual && -80<=zActual){
            
            self.line0.hidden= true;
            self.line15.hidden= true;
            self.line30.hidden= true;
            self.line45.hidden= true;
            self.line60.hidden= true;
            self.line75.hidden= true;
            self.line90.hidden= true;
            self.lineNeg15.hidden= true;
            self.lineNeg30.hidden= true;
            self.lineNeg45.hidden= true;
            self.lineNeg60.hidden= true;
            self.lineNeg75.hidden= false;
            self.lineNeg90.hidden= true;
            
            
        }      if (-55>=zActual && -60<=zActual){
            
            self.line0.hidden= true;
            self.line15.hidden= true;
            self.line30.hidden= true;
            self.line45.hidden= true;
            self.line60.hidden= true;
            self.line75.hidden= true;
            self.line90.hidden= true;
            self.lineNeg15.hidden= true;
            self.lineNeg30.hidden= true;
            self.lineNeg45.hidden= true;
            self.lineNeg60.hidden= false;
            self.lineNeg75.hidden= true;
            self.lineNeg90.hidden= true;
            
            
        }      if (-40>=zActual && -50<=zActual){
            
            self.line0.hidden= true;
            self.line15.hidden= true;
            self.line30.hidden= true;
            self.line45.hidden= true;
            self.line60.hidden= true;
            self.line75.hidden= true;
            self.line90.hidden= true;
            self.lineNeg15.hidden= true;
            self.lineNeg30.hidden= true;
            self.lineNeg45.hidden= false;
            self.lineNeg60.hidden= true;
            self.lineNeg75.hidden= true;
            self.lineNeg90.hidden= true;
            
            
        }      if (-25>=zActual && -35<=zActual){
            
            self.line0.hidden= true;
            self.line15.hidden= true;
            self.line30.hidden= true;
            self.line45.hidden= true;
            self.line60.hidden= true;
            self.line75.hidden= true;
            self.line90.hidden= true;
            self.lineNeg15.hidden= true;
            self.lineNeg30.hidden= false;
            self.lineNeg45.hidden= true;
            self.lineNeg60.hidden= true;
            self.lineNeg75.hidden= true;
            self.lineNeg90.hidden= true;
            
            
        }      if (-10>=zActual && -20<=zActual){
            
            self.line0.hidden= true;
            self.line15.hidden= true;
            self.line30.hidden= true;
            self.line45.hidden= true;
            self.line60.hidden= true;
            self.line75.hidden= true;
            self.line90.hidden= true;
            self.lineNeg15.hidden= false;
            self.lineNeg30.hidden= true;
            self.lineNeg45.hidden= true;
            self.lineNeg60.hidden= true;
            self.lineNeg75.hidden= true;
            self.lineNeg90.hidden= true;
            
            
        }      if (5>=zActual && -5<=zActual){
            
            self.line0.hidden= false;
            self.line15.hidden= true;
            self.line30.hidden= true;
            self.line45.hidden= true;
            self.line60.hidden= true;
            self.line75.hidden= true;
            self.line90.hidden= true;
            self.lineNeg15.hidden= true;
            self.lineNeg30.hidden= true;
            self.lineNeg45.hidden= true;
            self.lineNeg60.hidden= true;
            self.lineNeg75.hidden= true;
            self.lineNeg90.hidden= true;
            
            
        }      if (20>=zActual && 10<=zActual){
            
            self.line0.hidden= true;
            self.line15.hidden= false;
            self.line30.hidden= true;
            self.line45.hidden= true;
            self.line60.hidden= true;
            self.line75.hidden= true;
            self.line90.hidden= true;
            self.lineNeg15.hidden= true;
            self.lineNeg30.hidden= true;
            self.lineNeg45.hidden= true;
            self.lineNeg60.hidden= true;
            self.lineNeg75.hidden= true;
            self.lineNeg90.hidden= true;
            
            
        }      if (35>=zActual && 25<=zActual){
            
            self.line0.hidden= true;
            self.line15.hidden= true;
            self.line30.hidden= false;
            self.line45.hidden= true;
            self.line60.hidden= true;
            self.line75.hidden= true;
            self.line90.hidden= true;
            self.lineNeg15.hidden= true;
            self.lineNeg30.hidden= true;
            self.lineNeg45.hidden= true;
            self.lineNeg60.hidden= true;
            self.lineNeg75.hidden= true;
            self.lineNeg90.hidden= true;
            
            
        }      if (50>=zActual && 40<=zActual){
            
            self.line0.hidden= true;
            self.line15.hidden= true;
            self.line30.hidden= true;
            self.line45.hidden= false;
            self.line60.hidden= true;
            self.line75.hidden= true;
            self.line90.hidden= true;
            self.lineNeg15.hidden= true;
            self.lineNeg30.hidden= true;
            self.lineNeg45.hidden= true;
            self.lineNeg60.hidden= true;
            self.lineNeg75.hidden= true;
            self.lineNeg90.hidden= true;
            
            
        }      if (65>=zActual && 55<=zActual){
            
            self.line0.hidden= true;
            self.line15.hidden= true;
            self.line30.hidden= true;
            self.line45.hidden= true;
            self.line60.hidden= false;
            self.line75.hidden= true;
            self.line90.hidden= true;
            self.lineNeg15.hidden= true;
            self.lineNeg30.hidden= true;
            self.lineNeg45.hidden= true;
            self.lineNeg60.hidden= true;
            self.lineNeg75.hidden= true;
            self.lineNeg90.hidden= true;
            
            
        }      if  (80>=zActual && 70<=zActual){
            
            self.line0.hidden= true;
            self.line15.hidden= true;
            self.line30.hidden= true;
            self.line45.hidden= true;
            self.line60.hidden= true;
            self.line75.hidden= false;
            self.line90.hidden= true;
            self.lineNeg15.hidden= true;
            self.lineNeg30.hidden= true;
            self.lineNeg45.hidden= true;
            self.lineNeg60.hidden= true;
            self.lineNeg75.hidden= true;
            self.lineNeg90.hidden= true;
            
            
        }      if (95>=zActual && 85<=zActual){
            
            self.line0.hidden= true;
            self.line15.hidden= true;
            self.line30.hidden= true;
            self.line45.hidden= true;
            self.line60.hidden= true;
            self.line75.hidden= true;
            self.line90.hidden= false;
            self.lineNeg15.hidden= true;
            self.lineNeg30.hidden= true;
            self.lineNeg45.hidden= true;
            self.lineNeg60.hidden= true;
            self.lineNeg75.hidden= true;
            self.lineNeg90.hidden= true;
            
            
        }
    }
#pragma mark -75
        if (zAngle==-75){
            
            self.bar0.hidden= true;
            self.bar15.hidden= true;
            self.bar30.hidden= true;
            self.bar45.hidden= true;
            self.bar60.hidden= true;
            self.bar75.hidden= true;
            self.bar90.hidden= true;
            self.barNeg15.hidden= true;
            self.barNeg30.hidden= true;
            self.barNeg45.hidden= true;
            self.barNeg60.hidden= true;
            self.barNeg75.hidden= false;
            self.barNeg90.hidden= true;
            
            if (-85>=zActual && -95<=zActual){
                
                self.line0.hidden= true;
                self.line15.hidden= true;
                self.line30.hidden= true;
                self.line45.hidden= true;
                self.line60.hidden= true;
                self.line75.hidden= true;
                self.line90.hidden= true;
                self.lineNeg15.hidden= true;
                self.lineNeg30.hidden= true;
                self.lineNeg45.hidden= true;
                self.lineNeg60.hidden= true;
                self.lineNeg75.hidden= true;
                self.lineNeg90.hidden= true;
                
                
            }
            if (-70>=zActual && -80<=zActual){
                
                self.line0.hidden= true;
                self.line15.hidden= true;
                self.line30.hidden= true;
                self.line45.hidden= true;
                self.line60.hidden= true;
                self.line75.hidden= true;
                self.line90.hidden= true;
                self.lineNeg15.hidden= true;
                self.lineNeg30.hidden= true;
                self.lineNeg45.hidden= true;
                self.lineNeg60.hidden= true;
                self.lineNeg75.hidden= false;
                self.lineNeg90.hidden= true;
                
                    score=score+1;
                [self randomNumber];
                NSLog(@"Score= %d", score);

                zAngle=(self.random*15)-90;
                self.scoreLabel.text =[NSString stringWithFormat:@"Score - %d ",score];
            }      if (-55>=zActual && -60<=zActual){
                
                self.line0.hidden= true;
                self.line15.hidden= true;
                self.line30.hidden= true;
                self.line45.hidden= true;
                self.line60.hidden= true;
                self.line75.hidden= true;
                self.line90.hidden= true;
                self.lineNeg15.hidden= true;
                self.lineNeg30.hidden= true;
                self.lineNeg45.hidden= true;
                self.lineNeg60.hidden= false;
                self.lineNeg75.hidden= true;
                self.lineNeg90.hidden= true;
                
                
            }      if (-40>=zActual && -50<=zActual){
                
                self.line0.hidden= true;
                self.line15.hidden= true;
                self.line30.hidden= true;
                self.line45.hidden= true;
                self.line60.hidden= true;
                self.line75.hidden= true;
                self.line90.hidden= true;
                self.lineNeg15.hidden= true;
                self.lineNeg30.hidden= true;
                self.lineNeg45.hidden= false;
                self.lineNeg60.hidden= true;
                self.lineNeg75.hidden= true;
                self.lineNeg90.hidden= true;
                
                
            }      if (-25>=zActual && -35<=zActual){
                
                self.line0.hidden= true;
                self.line15.hidden= true;
                self.line30.hidden= true;
                self.line45.hidden= true;
                self.line60.hidden= true;
                self.line75.hidden= true;
                self.line90.hidden= true;
                self.lineNeg15.hidden= true;
                self.lineNeg30.hidden= false;
                self.lineNeg45.hidden= true;
                self.lineNeg60.hidden= true;
                self.lineNeg75.hidden= true;
                self.lineNeg90.hidden= true;
                
                
            }      if (-10>=zActual && -20<=zActual){
                
                self.line0.hidden= true;
                self.line15.hidden= true;
                self.line30.hidden= true;
                self.line45.hidden= true;
                self.line60.hidden= true;
                self.line75.hidden= true;
                self.line90.hidden= true;
                self.lineNeg15.hidden= false;
                self.lineNeg30.hidden= true;
                self.lineNeg45.hidden= true;
                self.lineNeg60.hidden= true;
                self.lineNeg75.hidden= true;
                self.lineNeg90.hidden= true;
                
                
            }      if (5>=zActual && -5<=zActual){
                
                self.line0.hidden= false;
                self.line15.hidden= true;
                self.line30.hidden= true;
                self.line45.hidden= true;
                self.line60.hidden= true;
                self.line75.hidden= true;
                self.line90.hidden= true;
                self.lineNeg15.hidden= true;
                self.lineNeg30.hidden= true;
                self.lineNeg45.hidden= true;
                self.lineNeg60.hidden= true;
                self.lineNeg75.hidden= true;
                self.lineNeg90.hidden= true;
                
                
            }      if (20>=zActual && 10<=zActual){
                
                self.line0.hidden= true;
                self.line15.hidden= false;
                self.line30.hidden= true;
                self.line45.hidden= true;
                self.line60.hidden= true;
                self.line75.hidden= true;
                self.line90.hidden= true;
                self.lineNeg15.hidden= true;
                self.lineNeg30.hidden= true;
                self.lineNeg45.hidden= true;
                self.lineNeg60.hidden= true;
                self.lineNeg75.hidden= true;
                self.lineNeg90.hidden= true;
                
                
            }      if (35>=zActual && 25<=zActual){
                
                self.line0.hidden= true;
                self.line15.hidden= true;
                self.line30.hidden= false;
                self.line45.hidden= true;
                self.line60.hidden= true;
                self.line75.hidden= true;
                self.line90.hidden= true;
                self.lineNeg15.hidden= true;
                self.lineNeg30.hidden= true;
                self.lineNeg45.hidden= true;
                self.lineNeg60.hidden= true;
                self.lineNeg75.hidden= true;
                self.lineNeg90.hidden= true;
                
                
            }      if (50>=zActual && 40<=zActual){
                
                self.line0.hidden= true;
                self.line15.hidden= true;
                self.line30.hidden= true;
                self.line45.hidden= false;
                self.line60.hidden= true;
                self.line75.hidden= true;
                self.line90.hidden= true;
                self.lineNeg15.hidden= true;
                self.lineNeg30.hidden= true;
                self.lineNeg45.hidden= true;
                self.lineNeg60.hidden= true;
                self.lineNeg75.hidden= true;
                self.lineNeg90.hidden= true;
                
                
            }      if (65>=zActual && 55<=zActual){
                
                self.line0.hidden= true;
                self.line15.hidden= true;
                self.line30.hidden= true;
                self.line45.hidden= true;
                self.line60.hidden= false;
                self.line75.hidden= true;
                self.line90.hidden= true;
                self.lineNeg15.hidden= true;
                self.lineNeg30.hidden= true;
                self.lineNeg45.hidden= true;
                self.lineNeg60.hidden= true;
                self.lineNeg75.hidden= true;
                self.lineNeg90.hidden= true;
                
                
            }      if  (80>=zActual && 70<=zActual){
                
                self.line0.hidden= true;
                self.line15.hidden= true;
                self.line30.hidden= true;
                self.line45.hidden= true;
                self.line60.hidden= true;
                self.line75.hidden= false;
                self.line90.hidden= true;
                self.lineNeg15.hidden= true;
                self.lineNeg30.hidden= true;
                self.lineNeg45.hidden= true;
                self.lineNeg60.hidden= true;
                self.lineNeg75.hidden= true;
                self.lineNeg90.hidden= true;
                
                
            }      if (95>=zActual && 85<=zActual){
                
                self.line0.hidden= true;
                self.line15.hidden= true;
                self.line30.hidden= true;
                self.line45.hidden= true;
                self.line60.hidden= true;
                self.line75.hidden= true;
                self.line90.hidden= false;
                self.lineNeg15.hidden= true;
                self.lineNeg30.hidden= true;
                self.lineNeg45.hidden= true;
                self.lineNeg60.hidden= true;
                self.lineNeg75.hidden= true;
                self.lineNeg90.hidden= true;
                
                
            }
        }
#pragma mark -60
            if (zAngle==-60){
                
                self.bar0.hidden= true;
                self.bar15.hidden= true;
                self.bar30.hidden= true;
                self.bar45.hidden= true;
                self.bar60.hidden= true;
                self.bar75.hidden= true;
                self.bar90.hidden= true;
                self.barNeg15.hidden= true;
                self.barNeg30.hidden= true;
                self.barNeg45.hidden= true;
                self.barNeg60.hidden= false;
                self.barNeg75.hidden= true;
                self.barNeg90.hidden= true;
                
                if (-85>=zActual && -95<=zActual){
                    
                    self.line0.hidden= true;
                    self.line15.hidden= true;
                    self.line30.hidden= true;
                    self.line45.hidden= true;
                    self.line60.hidden= true;
                    self.line75.hidden= true;
                    self.line90.hidden= true;
                    self.lineNeg15.hidden= true;
                    self.lineNeg30.hidden= true;
                    self.lineNeg45.hidden= true;
                    self.lineNeg60.hidden= true;
                    self.lineNeg75.hidden= true;
                    self.lineNeg90.hidden= true;
                    
                   
                }
                if (-70>=zActual && -80<=zActual){
                    
                    self.line0.hidden= true;
                    self.line15.hidden= true;
                    self.line30.hidden= true;
                    self.line45.hidden= true;
                    self.line60.hidden= true;
                    self.line75.hidden= true;
                    self.line90.hidden= true;
                    self.lineNeg15.hidden= true;
                    self.lineNeg30.hidden= true;
                    self.lineNeg45.hidden= true;
                    self.lineNeg60.hidden= true;
                    self.lineNeg75.hidden= false;
                    self.lineNeg90.hidden= true;
                    
                    
                }      if (-55>=zActual && -60<=zActual){
                    
                    self.line0.hidden= true;
                    self.line15.hidden= true;
                    self.line30.hidden= true;
                    self.line45.hidden= true;
                    self.line60.hidden= true;
                    self.line75.hidden= true;
                    self.line90.hidden= true;
                    self.lineNeg15.hidden= true;
                    self.lineNeg30.hidden= true;
                    self.lineNeg45.hidden= true;
                    self.lineNeg60.hidden= false;
                    self.lineNeg75.hidden= true;
                    self.lineNeg90.hidden= true;
                    
                        score=score+1;
                    
                     [self randomNumber];
                    NSLog(@"Score= %d", score);

                    zAngle=(self.random*15)-90;
                    NSLog(@"Score= %d", score);
                    self.scoreLabel.text =[NSString stringWithFormat:@"Score - %d ",score];
                    
                }      if (-40>=zActual && -50<=zActual){
                    
                    self.line0.hidden= true;
                    self.line15.hidden= true;
                    self.line30.hidden= true;
                    self.line45.hidden= true;
                    self.line60.hidden= true;
                    self.line75.hidden= true;
                    self.line90.hidden= true;
                    self.lineNeg15.hidden= true;
                    self.lineNeg30.hidden= true;
                    self.lineNeg45.hidden= false;
                    self.lineNeg60.hidden= true;
                    self.lineNeg75.hidden= true;
                    self.lineNeg90.hidden= true;
                    
                    
                }      if (-25>=zActual && -35<=zActual){
                    
                    self.line0.hidden= true;
                    self.line15.hidden= true;
                    self.line30.hidden= true;
                    self.line45.hidden= true;
                    self.line60.hidden= true;
                    self.line75.hidden= true;
                    self.line90.hidden= true;
                    self.lineNeg15.hidden= true;
                    self.lineNeg30.hidden= false;
                    self.lineNeg45.hidden= true;
                    self.lineNeg60.hidden= true;
                    self.lineNeg75.hidden= true;
                    self.lineNeg90.hidden= true;
                    
                    
                }      if (-10>=zActual && -20<=zActual){
                    
                    self.line0.hidden= true;
                    self.line15.hidden= true;
                    self.line30.hidden= true;
                    self.line45.hidden= true;
                    self.line60.hidden= true;
                    self.line75.hidden= true;
                    self.line90.hidden= true;
                    self.lineNeg15.hidden= false;
                    self.lineNeg30.hidden= true;
                    self.lineNeg45.hidden= true;
                    self.lineNeg60.hidden= true;
                    self.lineNeg75.hidden= true;
                    self.lineNeg90.hidden= true;
                    
                    
                }      if (5>=zActual && -5<=zActual){
                    
                    self.line0.hidden= false;
                    self.line15.hidden= true;
                    self.line30.hidden= true;
                    self.line45.hidden= true;
                    self.line60.hidden= true;
                    self.line75.hidden= true;
                    self.line90.hidden= true;
                    self.lineNeg15.hidden= true;
                    self.lineNeg30.hidden= true;
                    self.lineNeg45.hidden= true;
                    self.lineNeg60.hidden= true;
                    self.lineNeg75.hidden= true;
                    self.lineNeg90.hidden= true;
                    
                    
                }      if (20>=zActual && 10<=zActual){
                    
                    self.line0.hidden= true;
                    self.line15.hidden= false;
                    self.line30.hidden= true;
                    self.line45.hidden= true;
                    self.line60.hidden= true;
                    self.line75.hidden= true;
                    self.line90.hidden= true;
                    self.lineNeg15.hidden= true;
                    self.lineNeg30.hidden= true;
                    self.lineNeg45.hidden= true;
                    self.lineNeg60.hidden= true;
                    self.lineNeg75.hidden= true;
                    self.lineNeg90.hidden= true;
                    
                    
                }      if (35>=zActual && 25<=zActual){
                    
                    self.line0.hidden= true;
                    self.line15.hidden= true;
                    self.line30.hidden= false;
                    self.line45.hidden= true;
                    self.line60.hidden= true;
                    self.line75.hidden= true;
                    self.line90.hidden= true;
                    self.lineNeg15.hidden= true;
                    self.lineNeg30.hidden= true;
                    self.lineNeg45.hidden= true;
                    self.lineNeg60.hidden= true;
                    self.lineNeg75.hidden= true;
                    self.lineNeg90.hidden= true;
                    
                    
                }      if (50>=zActual && 40<=zActual){
                    
                    self.line0.hidden= true;
                    self.line15.hidden= true;
                    self.line30.hidden= true;
                    self.line45.hidden= false;
                    self.line60.hidden= true;
                    self.line75.hidden= true;
                    self.line90.hidden= true;
                    self.lineNeg15.hidden= true;
                    self.lineNeg30.hidden= true;
                    self.lineNeg45.hidden= true;
                    self.lineNeg60.hidden= true;
                    self.lineNeg75.hidden= true;
                    self.lineNeg90.hidden= true;
                    
                    
                }      if (65>=zActual && 55<=zActual){
                    
                    self.line0.hidden= true;
                    self.line15.hidden= true;
                    self.line30.hidden= true;
                    self.line45.hidden= true;
                    self.line60.hidden= false;
                    self.line75.hidden= true;
                    self.line90.hidden= true;
                    self.lineNeg15.hidden= true;
                    self.lineNeg30.hidden= true;
                    self.lineNeg45.hidden= true;
                    self.lineNeg60.hidden= true;
                    self.lineNeg75.hidden= true;
                    self.lineNeg90.hidden= true;
                    
                    
                }      if  (80>=zActual && 70<=zActual){
                    
                    self.line0.hidden= true;
                    self.line15.hidden= true;
                    self.line30.hidden= true;
                    self.line45.hidden= true;
                    self.line60.hidden= true;
                    self.line75.hidden= false;
                    self.line90.hidden= true;
                    self.lineNeg15.hidden= true;
                    self.lineNeg30.hidden= true;
                    self.lineNeg45.hidden= true;
                    self.lineNeg60.hidden= true;
                    self.lineNeg75.hidden= true;
                    self.lineNeg90.hidden= true;
                    
                    
                }      if (95>=zActual && 85<=zActual){
                    
                    self.line0.hidden= true;
                    self.line15.hidden= true;
                    self.line30.hidden= true;
                    self.line45.hidden= true;
                    self.line60.hidden= true;
                    self.line75.hidden= true;
                    self.line90.hidden= false;
                    self.lineNeg15.hidden= true;
                    self.lineNeg30.hidden= true;
                    self.lineNeg45.hidden= true;
                    self.lineNeg60.hidden= true;
                    self.lineNeg75.hidden= true;
                    self.lineNeg90.hidden= true;
                    
                    
                }
            }
#pragma mark -45
                if (zAngle==-45){
                    
                    self.bar0.hidden= true;
                    self.bar15.hidden= true;
                    self.bar30.hidden= true;
                    self.bar45.hidden= true;
                    self.bar60.hidden= true;
                    self.bar75.hidden= true;
                    self.bar90.hidden= true;
                    self.barNeg15.hidden= true;
                    self.barNeg30.hidden= true;
                    self.barNeg45.hidden= false;
                    self.barNeg60.hidden= true;
                    self.barNeg75.hidden= true;
                    self.barNeg90.hidden= true;
                    
                    if (-85>=zActual && -95<=zActual){
                        
                        self.line0.hidden= true;
                        self.line15.hidden= true;
                        self.line30.hidden= true;
                        self.line45.hidden= true;
                        self.line60.hidden= true;
                        self.line75.hidden= true;
                        self.line90.hidden= true;
                        self.lineNeg15.hidden= true;
                        self.lineNeg30.hidden= true;
                        self.lineNeg45.hidden= true;
                        self.lineNeg60.hidden= true;
                        self.lineNeg75.hidden= true;
                        self.lineNeg90.hidden= true;
                        
                       
                    }
                    if (-70>=zActual && -80<=zActual){
                        
                        self.line0.hidden= true;
                        self.line15.hidden= true;
                        self.line30.hidden= true;
                        self.line45.hidden= true;
                        self.line60.hidden= true;
                        self.line75.hidden= true;
                        self.line90.hidden= true;
                        self.lineNeg15.hidden= true;
                        self.lineNeg30.hidden= true;
                        self.lineNeg45.hidden= true;
                        self.lineNeg60.hidden= true;
                        self.lineNeg75.hidden= false;
                        self.lineNeg90.hidden= true;
                        
                        
                    }      if (-55>=zActual && -60<=zActual){
                        
                        self.line0.hidden= true;
                        self.line15.hidden= true;
                        self.line30.hidden= true;
                        self.line45.hidden= true;
                        self.line60.hidden= true;
                        self.line75.hidden= true;
                        self.line90.hidden= true;
                        self.lineNeg15.hidden= true;
                        self.lineNeg30.hidden= true;
                        self.lineNeg45.hidden= true;
                        self.lineNeg60.hidden= false;
                        self.lineNeg75.hidden= true;
                        self.lineNeg90.hidden= true;
                        
                        
                    }      if (-40>=zActual && -50<=zActual){
                        
                        self.line0.hidden= true;
                        self.line15.hidden= true;
                        self.line30.hidden= true;
                        self.line45.hidden= true;
                        self.line60.hidden= true;
                        self.line75.hidden= true;
                        self.line90.hidden= true;
                        self.lineNeg15.hidden= true;
                        self.lineNeg30.hidden= true;
                        self.lineNeg45.hidden= false;
                        self.lineNeg60.hidden= true;
                        self.lineNeg75.hidden= true;
                        self.lineNeg90.hidden= true;
                        
                        
                            score=score+1;
                        
                         [self randomNumber];
                        NSLog(@"Score= %d", score);

                        
                        zAngle=(self.random*15)-90;
                        self.scoreLabel.text =[NSString stringWithFormat:@"Score - %d ",score];
                    }      if (-25>=zActual && -35<=zActual){
                        
                        self.line0.hidden= true;
                        self.line15.hidden= true;
                        self.line30.hidden= true;
                        self.line45.hidden= true;
                        self.line60.hidden= true;
                        self.line75.hidden= true;
                        self.line90.hidden= true;
                        self.lineNeg15.hidden= true;
                        self.lineNeg30.hidden= false;
                        self.lineNeg45.hidden= true;
                        self.lineNeg60.hidden= true;
                        self.lineNeg75.hidden= true;
                        self.lineNeg90.hidden= true;
                        
                        
                    }      if (-10>=zActual && -20<=zActual){
                        
                        self.line0.hidden= true;
                        self.line15.hidden= true;
                        self.line30.hidden= true;
                        self.line45.hidden= true;
                        self.line60.hidden= true;
                        self.line75.hidden= true;
                        self.line90.hidden= true;
                        self.lineNeg15.hidden= false;
                        self.lineNeg30.hidden= true;
                        self.lineNeg45.hidden= true;
                        self.lineNeg60.hidden= true;
                        self.lineNeg75.hidden= true;
                        self.lineNeg90.hidden= true;
                        
                        
                    }      if (5>=zActual && -5<=zActual){
                        
                        self.line0.hidden= false;
                        self.line15.hidden= true;
                        self.line30.hidden= true;
                        self.line45.hidden= true;
                        self.line60.hidden= true;
                        self.line75.hidden= true;
                        self.line90.hidden= true;
                        self.lineNeg15.hidden= true;
                        self.lineNeg30.hidden= true;
                        self.lineNeg45.hidden= true;
                        self.lineNeg60.hidden= true;
                        self.lineNeg75.hidden= true;
                        self.lineNeg90.hidden= true;
                        
                        
                    }      if (20>=zActual && 10<=zActual){
                        
                        self.line0.hidden= true;
                        self.line15.hidden= false;
                        self.line30.hidden= true;
                        self.line45.hidden= true;
                        self.line60.hidden= true;
                        self.line75.hidden= true;
                        self.line90.hidden= true;
                        self.lineNeg15.hidden= true;
                        self.lineNeg30.hidden= true;
                        self.lineNeg45.hidden= true;
                        self.lineNeg60.hidden= true;
                        self.lineNeg75.hidden= true;
                        self.lineNeg90.hidden= true;
                        
                        
                    }      if (35>=zActual && 25<=zActual){
                        
                        self.line0.hidden= true;
                        self.line15.hidden= true;
                        self.line30.hidden= false;
                        self.line45.hidden= true;
                        self.line60.hidden= true;
                        self.line75.hidden= true;
                        self.line90.hidden= true;
                        self.lineNeg15.hidden= true;
                        self.lineNeg30.hidden= true;
                        self.lineNeg45.hidden= true;
                        self.lineNeg60.hidden= true;
                        self.lineNeg75.hidden= true;
                        self.lineNeg90.hidden= true;
                        
                        
                    }      if (50>=zActual && 40<=zActual){
                        
                        self.line0.hidden= true;
                        self.line15.hidden= true;
                        self.line30.hidden= true;
                        self.line45.hidden= false;
                        self.line60.hidden= true;
                        self.line75.hidden= true;
                        self.line90.hidden= true;
                        self.lineNeg15.hidden= true;
                        self.lineNeg30.hidden= true;
                        self.lineNeg45.hidden= true;
                        self.lineNeg60.hidden= true;
                        self.lineNeg75.hidden= true;
                        self.lineNeg90.hidden= true;
                        
                        
                    }      if (65>=zActual && 55<=zActual){
                        
                        self.line0.hidden= true;
                        self.line15.hidden= true;
                        self.line30.hidden= true;
                        self.line45.hidden= true;
                        self.line60.hidden= false;
                        self.line75.hidden= true;
                        self.line90.hidden= true;
                        self.lineNeg15.hidden= true;
                        self.lineNeg30.hidden= true;
                        self.lineNeg45.hidden= true;
                        self.lineNeg60.hidden= true;
                        self.lineNeg75.hidden= true;
                        self.lineNeg90.hidden= true;
                        
                        
                    }      if  (80>=zActual && 70<=zActual){
                        
                        self.line0.hidden= true;
                        self.line15.hidden= true;
                        self.line30.hidden= true;
                        self.line45.hidden= true;
                        self.line60.hidden= true;
                        self.line75.hidden= false;
                        self.line90.hidden= true;
                        self.lineNeg15.hidden= true;
                        self.lineNeg30.hidden= true;
                        self.lineNeg45.hidden= true;
                        self.lineNeg60.hidden= true;
                        self.lineNeg75.hidden= true;
                        self.lineNeg90.hidden= true;
                        
                        
                    }      if (95>=zActual && 85<=zActual){
                        
                        self.line0.hidden= true;
                        self.line15.hidden= true;
                        self.line30.hidden= true;
                        self.line45.hidden= true;
                        self.line60.hidden= true;
                        self.line75.hidden= true;
                        self.line90.hidden= false;
                        self.lineNeg15.hidden= true;
                        self.lineNeg30.hidden= true;
                        self.lineNeg45.hidden= true;
                        self.lineNeg60.hidden= true;
                        self.lineNeg75.hidden= true;
                        self.lineNeg90.hidden= true;
                        
                        
                    }
                }
#pragma mark -30
                    if (zAngle==-30){
                        
                        self.bar0.hidden= true;
                        self.bar15.hidden= true;
                        self.bar30.hidden= true;
                        self.bar45.hidden= true;
                        self.bar60.hidden= true;
                        self.bar75.hidden= true;
                        self.bar90.hidden= true;
                        self.barNeg15.hidden= true;
                        self.barNeg30.hidden= false;
                        self.barNeg45.hidden= true;
                        self.barNeg60.hidden= true;
                        self.barNeg75.hidden= true;
                        self.barNeg90.hidden= true;
                        
                        if (-85>=zActual && -95<=zActual){
                            
                            self.line0.hidden= true;
                            self.line15.hidden= true;
                            self.line30.hidden= true;
                            self.line45.hidden= true;
                            self.line60.hidden= true;
                            self.line75.hidden= true;
                            self.line90.hidden= true;
                            self.lineNeg15.hidden= true;
                            self.lineNeg30.hidden= true;
                            self.lineNeg45.hidden= true;
                            self.lineNeg60.hidden= true;
                            self.lineNeg75.hidden= true;
                            self.lineNeg90.hidden= true;
                            
                                score=score+1;
                            NSLog(@"Score= %d", score);

                            
                            [self randomNumber];
                            zAngle=(self.random*15)-90;
                            self.scoreLabel.text =[NSString stringWithFormat:@"Score - %d ",score];
                        }
                        if (-70>=zActual && -80<=zActual){
                            
                            self.line0.hidden= true;
                            self.line15.hidden= true;
                            self.line30.hidden= true;
                            self.line45.hidden= true;
                            self.line60.hidden= true;
                            self.line75.hidden= true;
                            self.line90.hidden= true;
                            self.lineNeg15.hidden= true;
                            self.lineNeg30.hidden= true;
                            self.lineNeg45.hidden= true;
                            self.lineNeg60.hidden= true;
                            self.lineNeg75.hidden= false;
                            self.lineNeg90.hidden= true;
                            
                            
                        }      if (-55>=zActual && -60<=zActual){
                            
                            self.line0.hidden= true;
                            self.line15.hidden= true;
                            self.line30.hidden= true;
                            self.line45.hidden= true;
                            self.line60.hidden= true;
                            self.line75.hidden= true;
                            self.line90.hidden= true;
                            self.lineNeg15.hidden= true;
                            self.lineNeg30.hidden= true;
                            self.lineNeg45.hidden= true;
                            self.lineNeg60.hidden= false;
                            self.lineNeg75.hidden= true;
                            self.lineNeg90.hidden= true;
                            
                            
                        }      if (-40>=zActual && -50<=zActual){
                            
                            self.line0.hidden= true;
                            self.line15.hidden= true;
                            self.line30.hidden= true;
                            self.line45.hidden= true;
                            self.line60.hidden= true;
                            self.line75.hidden= true;
                            self.line90.hidden= true;
                            self.lineNeg15.hidden= true;
                            self.lineNeg30.hidden= true;
                            self.lineNeg45.hidden= false;
                            self.lineNeg60.hidden= true;
                            self.lineNeg75.hidden= true;
                            self.lineNeg90.hidden= true;
                            
                            
                        }      if (-25>=zActual && -35<=zActual){
                            
                            self.line0.hidden= true;
                            self.line15.hidden= true;
                            self.line30.hidden= true;
                            self.line45.hidden= true;
                            self.line60.hidden= true;
                            self.line75.hidden= true;
                            self.line90.hidden= true;
                            self.lineNeg15.hidden= true;
                            self.lineNeg30.hidden= false;
                            self.lineNeg45.hidden= true;
                            self.lineNeg60.hidden= true;
                            self.lineNeg75.hidden= true;
                            self.lineNeg90.hidden= true;
                            
                                score=score+1;
                            
                            NSLog(@"Score= %d", score);

                            [self randomNumber];
                            zAngle=(self.random*15)-90;
                            self.scoreLabel.text =[NSString stringWithFormat:@"Score - %d ",score];
                        }      if (-10>=zActual && -20<=zActual){
                            
                            self.line0.hidden= true;
                            self.line15.hidden= true;
                            self.line30.hidden= true;
                            self.line45.hidden= true;
                            self.line60.hidden= true;
                            self.line75.hidden= true;
                            self.line90.hidden= true;
                            self.lineNeg15.hidden= false;
                            self.lineNeg30.hidden= true;
                            self.lineNeg45.hidden= true;
                            self.lineNeg60.hidden= true;
                            self.lineNeg75.hidden= true;
                            self.lineNeg90.hidden= true;
                            
                            
                        }      if (5>=zActual && -5<=zActual){
                            
                            self.line0.hidden= false;
                            self.line15.hidden= true;
                            self.line30.hidden= true;
                            self.line45.hidden= true;
                            self.line60.hidden= true;
                            self.line75.hidden= true;
                            self.line90.hidden= true;
                            self.lineNeg15.hidden= true;
                            self.lineNeg30.hidden= true;
                            self.lineNeg45.hidden= true;
                            self.lineNeg60.hidden= true;
                            self.lineNeg75.hidden= true;
                            self.lineNeg90.hidden= true;
                            
                            
                        }      if (20>=zActual && 10<=zActual){
                            
                            self.line0.hidden= true;
                            self.line15.hidden= false;
                            self.line30.hidden= true;
                            self.line45.hidden= true;
                            self.line60.hidden= true;
                            self.line75.hidden= true;
                            self.line90.hidden= true;
                            self.lineNeg15.hidden= true;
                            self.lineNeg30.hidden= true;
                            self.lineNeg45.hidden= true;
                            self.lineNeg60.hidden= true;
                            self.lineNeg75.hidden= true;
                            self.lineNeg90.hidden= true;
                            
                            
                        }      if (35>=zActual && 25<=zActual){
                            
                            self.line0.hidden= true;
                            self.line15.hidden= true;
                            self.line30.hidden= false;
                            self.line45.hidden= true;
                            self.line60.hidden= true;
                            self.line75.hidden= true;
                            self.line90.hidden= true;
                            self.lineNeg15.hidden= true;
                            self.lineNeg30.hidden= true;
                            self.lineNeg45.hidden= true;
                            self.lineNeg60.hidden= true;
                            self.lineNeg75.hidden= true;
                            self.lineNeg90.hidden= true;
                            
                            
                        }      if (50>=zActual && 40<=zActual){
                            
                            self.line0.hidden= true;
                            self.line15.hidden= true;
                            self.line30.hidden= true;
                            self.line45.hidden= false;
                            self.line60.hidden= true;
                            self.line75.hidden= true;
                            self.line90.hidden= true;
                            self.lineNeg15.hidden= true;
                            self.lineNeg30.hidden= true;
                            self.lineNeg45.hidden= true;
                            self.lineNeg60.hidden= true;
                            self.lineNeg75.hidden= true;
                            self.lineNeg90.hidden= true;
                            
                            
                        }      if (65>=zActual && 55<=zActual){
                            
                            self.line0.hidden= true;
                            self.line15.hidden= true;
                            self.line30.hidden= true;
                            self.line45.hidden= true;
                            self.line60.hidden= false;
                            self.line75.hidden= true;
                            self.line90.hidden= true;
                            self.lineNeg15.hidden= true;
                            self.lineNeg30.hidden= true;
                            self.lineNeg45.hidden= true;
                            self.lineNeg60.hidden= true;
                            self.lineNeg75.hidden= true;
                            self.lineNeg90.hidden= true;
                            
                            
                        }      if  (80>=zActual && 70<=zActual){
                            
                            self.line0.hidden= true;
                            self.line15.hidden= true;
                            self.line30.hidden= true;
                            self.line45.hidden= true;
                            self.line60.hidden= true;
                            self.line75.hidden= false;
                            self.line90.hidden= true;
                            self.lineNeg15.hidden= true;
                            self.lineNeg30.hidden= true;
                            self.lineNeg45.hidden= true;
                            self.lineNeg60.hidden= true;
                            self.lineNeg75.hidden= true;
                            self.lineNeg90.hidden= true;
                            
                            
                        }      if (95>=zActual && 85<=zActual){
                            
                            self.line0.hidden= true;
                            self.line15.hidden= true;
                            self.line30.hidden= true;
                            self.line45.hidden= true;
                            self.line60.hidden= true;
                            self.line75.hidden= true;
                            self.line90.hidden= false;
                            self.lineNeg15.hidden= true;
                            self.lineNeg30.hidden= true;
                            self.lineNeg45.hidden= true;
                            self.lineNeg60.hidden= true;
                            self.lineNeg75.hidden= true;
                            self.lineNeg90.hidden= true;
                            
                            
                        }
                    }
#pragma mark -15
                        if (zAngle==-15){
                            
                            self.bar0.hidden= true;
                            self.bar15.hidden= true;
                            self.bar30.hidden= true;
                            self.bar45.hidden= true;
                            self.bar60.hidden= true;
                            self.bar75.hidden= true;
                            self.bar90.hidden= true;
                            self.barNeg15.hidden= false;
                            self.barNeg30.hidden= true;
                            self.barNeg45.hidden= true;
                            self.barNeg60.hidden= true;
                            self.barNeg75.hidden= true;
                            self.barNeg90.hidden= true;
                            
                            if (-85>=zActual && -95<=zActual){
                                
                                self.line0.hidden= true;
                                self.line15.hidden= true;
                                self.line30.hidden= true;
                                self.line45.hidden= true;
                                self.line60.hidden= true;
                                self.line75.hidden= true;
                                self.line90.hidden= true;
                                self.lineNeg15.hidden= true;
                                self.lineNeg30.hidden= true;
                                self.lineNeg45.hidden= true;
                                self.lineNeg60.hidden= true;
                                self.lineNeg75.hidden= true;
                                self.lineNeg90.hidden= true;
                                
                                
                            }
                            if (-70>=zActual && -80<=zActual){
                                
                                self.line0.hidden= true;
                                self.line15.hidden= true;
                                self.line30.hidden= true;
                                self.line45.hidden= true;
                                self.line60.hidden= true;
                                self.line75.hidden= true;
                                self.line90.hidden= true;
                                self.lineNeg15.hidden= true;
                                self.lineNeg30.hidden= true;
                                self.lineNeg45.hidden= true;
                                self.lineNeg60.hidden= true;
                                self.lineNeg75.hidden= false;
                                self.lineNeg90.hidden= true;
                                
                                
                            }      if (-55>=zActual && -60<=zActual){
                                
                                self.line0.hidden= true;
                                self.line15.hidden= true;
                                self.line30.hidden= true;
                                self.line45.hidden= true;
                                self.line60.hidden= true;
                                self.line75.hidden= true;
                                self.line90.hidden= true;
                                self.lineNeg15.hidden= true;
                                self.lineNeg30.hidden= true;
                                self.lineNeg45.hidden= true;
                                self.lineNeg60.hidden= false;
                                self.lineNeg75.hidden= true;
                                self.lineNeg90.hidden= true;
                                
                                
                            }      if (-40>=zActual && -50<=zActual){
                                
                                self.line0.hidden= true;
                                self.line15.hidden= true;
                                self.line30.hidden= true;
                                self.line45.hidden= true;
                                self.line60.hidden= true;
                                self.line75.hidden= true;
                                self.line90.hidden= true;
                                self.lineNeg15.hidden= true;
                                self.lineNeg30.hidden= true;
                                self.lineNeg45.hidden= false;
                                self.lineNeg60.hidden= true;
                                self.lineNeg75.hidden= true;
                                self.lineNeg90.hidden= true;
                                
                                
                            }      if (-25>=zActual && -35<=zActual){
                                
                                self.line0.hidden= true;
                                self.line15.hidden= true;
                                self.line30.hidden= true;
                                self.line45.hidden= true;
                                self.line60.hidden= true;
                                self.line75.hidden= true;
                                self.line90.hidden= true;
                                self.lineNeg15.hidden= true;
                                self.lineNeg30.hidden= false;
                                self.lineNeg45.hidden= true;
                                self.lineNeg60.hidden= true;
                                self.lineNeg75.hidden= true;
                                self.lineNeg90.hidden= true;
                                
                                
                            }      if (-10>=zActual && -20<=zActual){
                                
                                self.line0.hidden= true;
                                self.line15.hidden= true;
                                self.line30.hidden= true;
                                self.line45.hidden= true;
                                self.line60.hidden= true;
                                self.line75.hidden= true;
                                self.line90.hidden= true;
                                self.lineNeg15.hidden= false;
                                self.lineNeg30.hidden= true;
                                self.lineNeg45.hidden= true;
                                self.lineNeg60.hidden= true;
                                self.lineNeg75.hidden= true;
                                self.lineNeg90.hidden= true;
                                
                                    score=score+1;
                                NSLog(@"Score= %d", score);
                                
                                [self randomNumber];
                                zAngle=(self.random*15)-90;
                                self.scoreLabel.text =[NSString stringWithFormat:@"Score - %d ",score];
                            }      if (5>=zActual && -5<=zActual){
                                
                                self.line0.hidden= false;
                                self.line15.hidden= true;
                                self.line30.hidden= true;
                                self.line45.hidden= true;
                                self.line60.hidden= true;
                                self.line75.hidden= true;
                                self.line90.hidden= true;
                                self.lineNeg15.hidden= true;
                                self.lineNeg30.hidden= true;
                                self.lineNeg45.hidden= true;
                                self.lineNeg60.hidden= true;
                                self.lineNeg75.hidden= true;
                                self.lineNeg90.hidden= true;
                                
                                
                            }      if (20>=zActual && 10<=zActual){
                                
                                self.line0.hidden= true;
                                self.line15.hidden= false;
                                self.line30.hidden= true;
                                self.line45.hidden= true;
                                self.line60.hidden= true;
                                self.line75.hidden= true;
                                self.line90.hidden= true;
                                self.lineNeg15.hidden= true;
                                self.lineNeg30.hidden= true;
                                self.lineNeg45.hidden= true;
                                self.lineNeg60.hidden= true;
                                self.lineNeg75.hidden= true;
                                self.lineNeg90.hidden= true;
                                
                                
                            }      if (35>=zActual && 25<=zActual){
                                
                                self.line0.hidden= true;
                                self.line15.hidden= true;
                                self.line30.hidden= false;
                                self.line45.hidden= true;
                                self.line60.hidden= true;
                                self.line75.hidden= true;
                                self.line90.hidden= true;
                                self.lineNeg15.hidden= true;
                                self.lineNeg30.hidden= true;
                                self.lineNeg45.hidden= true;
                                self.lineNeg60.hidden= true;
                                self.lineNeg75.hidden= true;
                                self.lineNeg90.hidden= true;
                                
                                
                            }      if (50>=zActual && 40<=zActual){
                                
                                self.line0.hidden= true;
                                self.line15.hidden= true;
                                self.line30.hidden= true;
                                self.line45.hidden= false;
                                self.line60.hidden= true;
                                self.line75.hidden= true;
                                self.line90.hidden= true;
                                self.lineNeg15.hidden= true;
                                self.lineNeg30.hidden= true;
                                self.lineNeg45.hidden= true;
                                self.lineNeg60.hidden= true;
                                self.lineNeg75.hidden= true;
                                self.lineNeg90.hidden= true;
                                
                                
                            }      if (65>=zActual && 55<=zActual){
                                
                                self.line0.hidden= true;
                                self.line15.hidden= true;
                                self.line30.hidden= true;
                                self.line45.hidden= true;
                                self.line60.hidden= false;
                                self.line75.hidden= true;
                                self.line90.hidden= true;
                                self.lineNeg15.hidden= true;
                                self.lineNeg30.hidden= true;
                                self.lineNeg45.hidden= true;
                                self.lineNeg60.hidden= true;
                                self.lineNeg75.hidden= true;
                                self.lineNeg90.hidden= true;
                                
                                
                            }      if  (80>=zActual && 70<=zActual){
                                
                                self.line0.hidden= true;
                                self.line15.hidden= true;
                                self.line30.hidden= true;
                                self.line45.hidden= true;
                                self.line60.hidden= true;
                                self.line75.hidden= false;
                                self.line90.hidden= true;
                                self.lineNeg15.hidden= true;
                                self.lineNeg30.hidden= true;
                                self.lineNeg45.hidden= true;
                                self.lineNeg60.hidden= true;
                                self.lineNeg75.hidden= true;
                                self.lineNeg90.hidden= true;
                                
                                
                            }      if (95>=zActual && 85<=zActual){
                                
                                self.line0.hidden= true;
                                self.line15.hidden= true;
                                self.line30.hidden= true;
                                self.line45.hidden= true;
                                self.line60.hidden= true;
                                self.line75.hidden= true;
                                self.line90.hidden= false;
                                self.lineNeg15.hidden= true;
                                self.lineNeg30.hidden= true;
                                self.lineNeg45.hidden= true;
                                self.lineNeg60.hidden= true;
                                self.lineNeg75.hidden= true;
                                self.lineNeg90.hidden= true;
                                
                                
                            }
                        }
#pragma mark 0
                            if (zAngle==0){
                                
                                self.bar0.hidden= false;
                                self.bar15.hidden= true;
                                self.bar30.hidden= true;
                                self.bar45.hidden= true;
                                self.bar60.hidden= true;
                                self.bar75.hidden= true;
                                self.bar90.hidden= true;
                                self.barNeg15.hidden= true;
                                self.barNeg30.hidden= true;
                                self.barNeg45.hidden= true;
                                self.barNeg60.hidden= true;
                                self.barNeg75.hidden= true;
                                self.barNeg90.hidden= true;
                                
                                if (-85>=zActual && -95<=zActual){
                                    
                                    self.line0.hidden= true;
                                    self.line15.hidden= true;
                                    self.line30.hidden= true;
                                    self.line45.hidden= true;
                                    self.line60.hidden= true;
                                    self.line75.hidden= true;
                                    self.line90.hidden= true;
                                    self.lineNeg15.hidden= true;
                                    self.lineNeg30.hidden= true;
                                    self.lineNeg45.hidden= true;
                                    self.lineNeg60.hidden= true;
                                    self.lineNeg75.hidden= true;
                                    self.lineNeg90.hidden= true;
                                    
                                    
                                }
                                if (-70>=zActual && -80<=zActual){
                                    
                                    self.line0.hidden= true;
                                    self.line15.hidden= true;
                                    self.line30.hidden= true;
                                    self.line45.hidden= true;
                                    self.line60.hidden= true;
                                    self.line75.hidden= true;
                                    self.line90.hidden= true;
                                    self.lineNeg15.hidden= true;
                                    self.lineNeg30.hidden= true;
                                    self.lineNeg45.hidden= true;
                                    self.lineNeg60.hidden= true;
                                    self.lineNeg75.hidden= false;
                                    self.lineNeg90.hidden= true;
                                    
                                    
                                }      if (-55>=zActual && -60<=zActual){
                                    
                                    self.line0.hidden= true;
                                    self.line15.hidden= true;
                                    self.line30.hidden= true;
                                    self.line45.hidden= true;
                                    self.line60.hidden= true;
                                    self.line75.hidden= true;
                                    self.line90.hidden= true;
                                    self.lineNeg15.hidden= true;
                                    self.lineNeg30.hidden= true;
                                    self.lineNeg45.hidden= true;
                                    self.lineNeg60.hidden= false;
                                    self.lineNeg75.hidden= true;
                                    self.lineNeg90.hidden= true;
                                    
                                    
                                }      if (-40>=zActual && -50<=zActual){
                                    
                                    self.line0.hidden= true;
                                    self.line15.hidden= true;
                                    self.line30.hidden= true;
                                    self.line45.hidden= true;
                                    self.line60.hidden= true;
                                    self.line75.hidden= true;
                                    self.line90.hidden= true;
                                    self.lineNeg15.hidden= true;
                                    self.lineNeg30.hidden= true;
                                    self.lineNeg45.hidden= false;
                                    self.lineNeg60.hidden= true;
                                    self.lineNeg75.hidden= true;
                                    self.lineNeg90.hidden= true;
                                    
                                    
                                }      if (-25>=zActual && -35<=zActual){
                                    
                                    self.line0.hidden= true;
                                    self.line15.hidden= true;
                                    self.line30.hidden= true;
                                    self.line45.hidden= true;
                                    self.line60.hidden= true;
                                    self.line75.hidden= true;
                                    self.line90.hidden= true;
                                    self.lineNeg15.hidden= true;
                                    self.lineNeg30.hidden= false;
                                    self.lineNeg45.hidden= true;
                                    self.lineNeg60.hidden= true;
                                    self.lineNeg75.hidden= true;
                                    self.lineNeg90.hidden= true;
                                    
                                    
                                }      if (-10>=zActual && -20<=zActual){
                                    
                                    self.line0.hidden= true;
                                    self.line15.hidden= true;
                                    self.line30.hidden= true;
                                    self.line45.hidden= true;
                                    self.line60.hidden= true;
                                    self.line75.hidden= true;
                                    self.line90.hidden= true;
                                    self.lineNeg15.hidden= false;
                                    self.lineNeg30.hidden= true;
                                    self.lineNeg45.hidden= true;
                                    self.lineNeg60.hidden= true;
                                    self.lineNeg75.hidden= true;
                                    self.lineNeg90.hidden= true;
                                    
                                    
                                }      if (5>=zActual && -5<=zActual){
                                    
                                    self.line0.hidden= false;
                                    self.line15.hidden= true;
                                    self.line30.hidden= true;
                                    self.line45.hidden= true;
                                    self.line60.hidden= true;
                                    self.line75.hidden= true;
                                    self.line90.hidden= true;
                                    self.lineNeg15.hidden= true;
                                    self.lineNeg30.hidden= true;
                                    self.lineNeg45.hidden= true;
                                    self.lineNeg60.hidden= true;
                                    self.lineNeg75.hidden= true;
                                    self.lineNeg90.hidden= true;
                                    
                                        score=score+1;
                                    NSLog(@"Score= %d", score);

                                    [self randomNumber];
                                   zAngle=(self.random*15)-90;
                                    self.scoreLabel.text =[NSString stringWithFormat:@"Score - %d ",score];
                                }      if (20>=zActual && 10<=zActual){
                                    
                                    self.line0.hidden= true;
                                    self.line15.hidden= false;
                                    self.line30.hidden= true;
                                    self.line45.hidden= true;
                                    self.line60.hidden= true;
                                    self.line75.hidden= true;
                                    self.line90.hidden= true;
                                    self.lineNeg15.hidden= true;
                                    self.lineNeg30.hidden= true;
                                    self.lineNeg45.hidden= true;
                                    self.lineNeg60.hidden= true;
                                    self.lineNeg75.hidden= true;
                                    self.lineNeg90.hidden= true;
                                    
                                    
                                }      if (35>=zActual && 25<=zActual){
                                    
                                    self.line0.hidden= true;
                                    self.line15.hidden= true;
                                    self.line30.hidden= false;
                                    self.line45.hidden= true;
                                    self.line60.hidden= true;
                                    self.line75.hidden= true;
                                    self.line90.hidden= true;
                                    self.lineNeg15.hidden= true;
                                    self.lineNeg30.hidden= true;
                                    self.lineNeg45.hidden= true;
                                    self.lineNeg60.hidden= true;
                                    self.lineNeg75.hidden= true;
                                    self.lineNeg90.hidden= true;
                                    
                                    
                                }      if (50>=zActual && 40<=zActual){
                                    
                                    self.line0.hidden= true;
                                    self.line15.hidden= true;
                                    self.line30.hidden= true;
                                    self.line45.hidden= false;
                                    self.line60.hidden= true;
                                    self.line75.hidden= true;
                                    self.line90.hidden= true;
                                    self.lineNeg15.hidden= true;
                                    self.lineNeg30.hidden= true;
                                    self.lineNeg45.hidden= true;
                                    self.lineNeg60.hidden= true;
                                    self.lineNeg75.hidden= true;
                                    self.lineNeg90.hidden= true;
                                    
                                    
                                }      if (65>=zActual && 55<=zActual){
                                    
                                    self.line0.hidden= true;
                                    self.line15.hidden= true;
                                    self.line30.hidden= true;
                                    self.line45.hidden= true;
                                    self.line60.hidden= false;
                                    self.line75.hidden= true;
                                    self.line90.hidden= true;
                                    self.lineNeg15.hidden= true;
                                    self.lineNeg30.hidden= true;
                                    self.lineNeg45.hidden= true;
                                    self.lineNeg60.hidden= true;
                                    self.lineNeg75.hidden= true;
                                    self.lineNeg90.hidden= true;
                                    
                                    
                                }      if  (80>=zActual && 70<=zActual){
                                    
                                    self.line0.hidden= true;
                                    self.line15.hidden= true;
                                    self.line30.hidden= true;
                                    self.line45.hidden= true;
                                    self.line60.hidden= true;
                                    self.line75.hidden= false;
                                    self.line90.hidden= true;
                                    self.lineNeg15.hidden= true;
                                    self.lineNeg30.hidden= true;
                                    self.lineNeg45.hidden= true;
                                    self.lineNeg60.hidden= true;
                                    self.lineNeg75.hidden= true;
                                    self.lineNeg90.hidden= true;
                                    
                                    
                                }      if (95>=zActual && 85<=zActual){
                                    
                                    self.line0.hidden= true;
                                    self.line15.hidden= true;
                                    self.line30.hidden= true;
                                    self.line45.hidden= true;
                                    self.line60.hidden= true;
                                    self.line75.hidden= true;
                                    self.line90.hidden= false;
                                    self.lineNeg15.hidden= true;
                                    self.lineNeg30.hidden= true;
                                    self.lineNeg45.hidden= true;
                                    self.lineNeg60.hidden= true;
                                    self.lineNeg75.hidden= true;
                                    self.lineNeg90.hidden= true;
                                    
                                    
                                }
                            }
#pragma mark 15
                                if (zAngle==15){
                                    
                                    self.bar0.hidden= true;
                                    self.bar15.hidden= false;
                                    self.bar30.hidden= true;
                                    self.bar45.hidden= true;
                                    self.bar60.hidden= true;
                                    self.bar75.hidden= true;
                                    self.bar90.hidden= true;
                                    self.barNeg15.hidden= true;
                                    self.barNeg30.hidden= true;
                                    self.barNeg45.hidden= true;
                                    self.barNeg60.hidden= true;
                                    self.barNeg75.hidden= true;
                                    self.barNeg90.hidden= true;
                                    
                                    if (-85>=zActual && -95<=zActual){
                                        
                                        self.line0.hidden= true;
                                        self.line15.hidden= true;
                                        self.line30.hidden= true;
                                        self.line45.hidden= true;
                                        self.line60.hidden= true;
                                        self.line75.hidden= true;
                                        self.line90.hidden= true;
                                        self.lineNeg15.hidden= true;
                                        self.lineNeg30.hidden= true;
                                        self.lineNeg45.hidden= true;
                                        self.lineNeg60.hidden= true;
                                        self.lineNeg75.hidden= true;
                                        self.lineNeg90.hidden= true;
                                        
                                        
                                    }
                                    if (-70>=zActual && -80<=zActual){
                                        
                                        self.line0.hidden= true;
                                        self.line15.hidden= true;
                                        self.line30.hidden= true;
                                        self.line45.hidden= true;
                                        self.line60.hidden= true;
                                        self.line75.hidden= true;
                                        self.line90.hidden= true;
                                        self.lineNeg15.hidden= true;
                                        self.lineNeg30.hidden= true;
                                        self.lineNeg45.hidden= true;
                                        self.lineNeg60.hidden= true;
                                        self.lineNeg75.hidden= false;
                                        self.lineNeg90.hidden= true;
                                        
                                        
                                    }      if (-55>=zActual && -60<=zActual){
                                        
                                        self.line0.hidden= true;
                                        self.line15.hidden= true;
                                        self.line30.hidden= true;
                                        self.line45.hidden= true;
                                        self.line60.hidden= true;
                                        self.line75.hidden= true;
                                        self.line90.hidden= true;
                                        self.lineNeg15.hidden= true;
                                        self.lineNeg30.hidden= true;
                                        self.lineNeg45.hidden= true;
                                        self.lineNeg60.hidden= false;
                                        self.lineNeg75.hidden= true;
                                        self.lineNeg90.hidden= true;
                                        
                                        
                                    }      if (-40>=zActual && -50<=zActual){
                                        
                                        self.line0.hidden= true;
                                        self.line15.hidden= true;
                                        self.line30.hidden= true;
                                        self.line45.hidden= true;
                                        self.line60.hidden= true;
                                        self.line75.hidden= true;
                                        self.line90.hidden= true;
                                        self.lineNeg15.hidden= true;
                                        self.lineNeg30.hidden= true;
                                        self.lineNeg45.hidden= false;
                                        self.lineNeg60.hidden= true;
                                        self.lineNeg75.hidden= true;
                                        self.lineNeg90.hidden= true;
                                        
                                        
                                    }      if (-25>=zActual && -35<=zActual){
                                        
                                        self.line0.hidden= true;
                                        self.line15.hidden= true;
                                        self.line30.hidden= true;
                                        self.line45.hidden= true;
                                        self.line60.hidden= true;
                                        self.line75.hidden= true;
                                        self.line90.hidden= true;
                                        self.lineNeg15.hidden= true;
                                        self.lineNeg30.hidden= false;
                                        self.lineNeg45.hidden= true;
                                        self.lineNeg60.hidden= true;
                                        self.lineNeg75.hidden= true;
                                        self.lineNeg90.hidden= true;
                                        
                                        
                                    }      if (-10>=zActual && -20<=zActual){
                                        
                                        self.line0.hidden= true;
                                        self.line15.hidden= true;
                                        self.line30.hidden= true;
                                        self.line45.hidden= true;
                                        self.line60.hidden= true;
                                        self.line75.hidden= true;
                                        self.line90.hidden= true;
                                        self.lineNeg15.hidden= false;
                                        self.lineNeg30.hidden= true;
                                        self.lineNeg45.hidden= true;
                                        self.lineNeg60.hidden= true;
                                        self.lineNeg75.hidden= true;
                                        self.lineNeg90.hidden= true;
                                        
                                        
                                    }      if (5>=zActual && -5<=zActual){
                                        
                                        self.line0.hidden= false;
                                        self.line15.hidden= true;
                                        self.line30.hidden= true;
                                        self.line45.hidden= true;
                                        self.line60.hidden= true;
                                        self.line75.hidden= true;
                                        self.line90.hidden= true;
                                        self.lineNeg15.hidden= true;
                                        self.lineNeg30.hidden= true;
                                        self.lineNeg45.hidden= true;
                                        self.lineNeg60.hidden= true;
                                        self.lineNeg75.hidden= true;
                                        self.lineNeg90.hidden= true;
                                        
                                        
                                    }      if (20>=zActual && 10<=zActual){
                                        
                                        self.line0.hidden= true;
                                        self.line15.hidden= false;
                                        self.line30.hidden= true;
                                        self.line45.hidden= true;
                                        self.line60.hidden= true;
                                        self.line75.hidden= true;
                                        self.line90.hidden= true;
                                        self.lineNeg15.hidden= true;
                                        self.lineNeg30.hidden= true;
                                        self.lineNeg45.hidden= true;
                                        self.lineNeg60.hidden= true;
                                        self.lineNeg75.hidden= true;
                                        self.lineNeg90.hidden= true;
                                        
                                            score=score+1;
                                        NSLog(@"Score= %d", score);

                                        [self randomNumber];
                                        zAngle=(self.random*15)-90;
                                        self.scoreLabel.text =[NSString stringWithFormat:@"Score - %d ",score];
                                    }      if (35>=zActual && 25<=zActual){
                                        
                                        self.line0.hidden= true;
                                        self.line15.hidden= true;
                                        self.line30.hidden= false;
                                        self.line45.hidden= true;
                                        self.line60.hidden= true;
                                        self.line75.hidden= true;
                                        self.line90.hidden= true;
                                        self.lineNeg15.hidden= true;
                                        self.lineNeg30.hidden= true;
                                        self.lineNeg45.hidden= true;
                                        self.lineNeg60.hidden= true;
                                        self.lineNeg75.hidden= true;
                                        self.lineNeg90.hidden= true;
                                        
                                        
                                    }      if (50>=zActual && 40<=zActual){
                                        
                                        self.line0.hidden= true;
                                        self.line15.hidden= true;
                                        self.line30.hidden= true;
                                        self.line45.hidden= false;
                                        self.line60.hidden= true;
                                        self.line75.hidden= true;
                                        self.line90.hidden= true;
                                        self.lineNeg15.hidden= true;
                                        self.lineNeg30.hidden= true;
                                        self.lineNeg45.hidden= true;
                                        self.lineNeg60.hidden= true;
                                        self.lineNeg75.hidden= true;
                                        self.lineNeg90.hidden= true;
                                        
                                        
                                    }      if (65>=zActual && 55<=zActual){
                                        
                                        self.line0.hidden= true;
                                        self.line15.hidden= true;
                                        self.line30.hidden= true;
                                        self.line45.hidden= true;
                                        self.line60.hidden= false;
                                        self.line75.hidden= true;
                                        self.line90.hidden= true;
                                        self.lineNeg15.hidden= true;
                                        self.lineNeg30.hidden= true;
                                        self.lineNeg45.hidden= true;
                                        self.lineNeg60.hidden= true;
                                        self.lineNeg75.hidden= true;
                                        self.lineNeg90.hidden= true;
                                        
                                        
                                    }      if  (80>=zActual && 70<=zActual){
                                        
                                        self.line0.hidden= true;
                                        self.line15.hidden= true;
                                        self.line30.hidden= true;
                                        self.line45.hidden= true;
                                        self.line60.hidden= true;
                                        self.line75.hidden= false;
                                        self.line90.hidden= true;
                                        self.lineNeg15.hidden= true;
                                        self.lineNeg30.hidden= true;
                                        self.lineNeg45.hidden= true;
                                        self.lineNeg60.hidden= true;
                                        self.lineNeg75.hidden= true;
                                        self.lineNeg90.hidden= true;
                                        
                                        
                                    }      if (95>=zActual && 85<=zActual){
                                        
                                        self.line0.hidden= true;
                                        self.line15.hidden= true;
                                        self.line30.hidden= true;
                                        self.line45.hidden= true;
                                        self.line60.hidden= true;
                                        self.line75.hidden= true;
                                        self.line90.hidden= false;
                                        self.lineNeg15.hidden= true;
                                        self.lineNeg30.hidden= true;
                                        self.lineNeg45.hidden= true;
                                        self.lineNeg60.hidden= true;
                                        self.lineNeg75.hidden= true;
                                        self.lineNeg90.hidden= true;
                                        
                                        
                                    }
                                }
#pragma mark 30
                                    if (zAngle==30){
                                        
                                        self.bar0.hidden= true;
                                        self.bar15.hidden= true;
                                        self.bar30.hidden= false;
                                        self.bar45.hidden= true;
                                        self.bar60.hidden= true;
                                        self.bar75.hidden= true;
                                        self.bar90.hidden= true;
                                        self.barNeg15.hidden= true;
                                        self.barNeg30.hidden= true;
                                        self.barNeg45.hidden= true;
                                        self.barNeg60.hidden= true;
                                        self.barNeg75.hidden= true;
                                        self.barNeg90.hidden= true;
                                        
                                        if (-85>=zActual && -95<=zActual){
                                            
                                            self.line0.hidden= true;
                                            self.line15.hidden= true;
                                            self.line30.hidden= true;
                                            self.line45.hidden= true;
                                            self.line60.hidden= true;
                                            self.line75.hidden= true;
                                            self.line90.hidden= true;
                                            self.lineNeg15.hidden= true;
                                            self.lineNeg30.hidden= true;
                                            self.lineNeg45.hidden= true;
                                            self.lineNeg60.hidden= true;
                                            self.lineNeg75.hidden= true;
                                            self.lineNeg90.hidden= true;
                                            
                                           
                                        }
                                        if (-70>=zActual && -80<=zActual){
                                            
                                            self.line0.hidden= true;
                                            self.line15.hidden= true;
                                            self.line30.hidden= true;
                                            self.line45.hidden= true;
                                            self.line60.hidden= true;
                                            self.line75.hidden= true;
                                            self.line90.hidden= true;
                                            self.lineNeg15.hidden= true;
                                            self.lineNeg30.hidden= true;
                                            self.lineNeg45.hidden= true;
                                            self.lineNeg60.hidden= true;
                                            self.lineNeg75.hidden= false;
                                            self.lineNeg90.hidden= true;
                                            
                                            
                                        }      if (-55>=zActual && -60<=zActual){
                                            
                                            self.line0.hidden= true;
                                            self.line15.hidden= true;
                                            self.line30.hidden= true;
                                            self.line45.hidden= true;
                                            self.line60.hidden= true;
                                            self.line75.hidden= true;
                                            self.line90.hidden= true;
                                            self.lineNeg15.hidden= true;
                                            self.lineNeg30.hidden= true;
                                            self.lineNeg45.hidden= true;
                                            self.lineNeg60.hidden= false;
                                            self.lineNeg75.hidden= true;
                                            self.lineNeg90.hidden= true;
                                            
                                            
                                        }      if (-40>=zActual && -50<=zActual){
                                            
                                            self.line0.hidden= true;
                                            self.line15.hidden= true;
                                            self.line30.hidden= true;
                                            self.line45.hidden= true;
                                            self.line60.hidden= true;
                                            self.line75.hidden= true;
                                            self.line90.hidden= true;
                                            self.lineNeg15.hidden= true;
                                            self.lineNeg30.hidden= true;
                                            self.lineNeg45.hidden= false;
                                            self.lineNeg60.hidden= true;
                                            self.lineNeg75.hidden= true;
                                            self.lineNeg90.hidden= true;
                                            
                                            
                                        }      if (-25>=zActual && -35<=zActual){
                                            
                                            self.line0.hidden= true;
                                            self.line15.hidden= true;
                                            self.line30.hidden= true;
                                            self.line45.hidden= true;
                                            self.line60.hidden= true;
                                            self.line75.hidden= true;
                                            self.line90.hidden= true;
                                            self.lineNeg15.hidden= true;
                                            self.lineNeg30.hidden= false;
                                            self.lineNeg45.hidden= true;
                                            self.lineNeg60.hidden= true;
                                            self.lineNeg75.hidden= true;
                                            self.lineNeg90.hidden= true;
                                            
                                            
                                        }      if (-10>=zActual && -20<=zActual){
                                            
                                            self.line0.hidden= true;
                                            self.line15.hidden= true;
                                            self.line30.hidden= true;
                                            self.line45.hidden= true;
                                            self.line60.hidden= true;
                                            self.line75.hidden= true;
                                            self.line90.hidden= true;
                                            self.lineNeg15.hidden= false;
                                            self.lineNeg30.hidden= true;
                                            self.lineNeg45.hidden= true;
                                            self.lineNeg60.hidden= true;
                                            self.lineNeg75.hidden= true;
                                            self.lineNeg90.hidden= true;
                                            
                                            
                                        }      if (5>=zActual && -5<=zActual){
                                            
                                            self.line0.hidden= false;
                                            self.line15.hidden= true;
                                            self.line30.hidden= true;
                                            self.line45.hidden= true;
                                            self.line60.hidden= true;
                                            self.line75.hidden= true;
                                            self.line90.hidden= true;
                                            self.lineNeg15.hidden= true;
                                            self.lineNeg30.hidden= true;
                                            self.lineNeg45.hidden= true;
                                            self.lineNeg60.hidden= true;
                                            self.lineNeg75.hidden= true;
                                            self.lineNeg90.hidden= true;
                                            
                                            
                                        }      if (20>=zActual && 10<=zActual){
                                            
                                            self.line0.hidden= true;
                                            self.line15.hidden= false;
                                            self.line30.hidden= true;
                                            self.line45.hidden= true;
                                            self.line60.hidden= true;
                                            self.line75.hidden= true;
                                            self.line90.hidden= true;
                                            self.lineNeg15.hidden= true;
                                            self.lineNeg30.hidden= true;
                                            self.lineNeg45.hidden= true;
                                            self.lineNeg60.hidden= true;
                                            self.lineNeg75.hidden= true;
                                            self.lineNeg90.hidden= true;
                                            
                                            
                                        }      if (35>=zActual && 25<=zActual){
                                            
                                            self.line0.hidden= true;
                                            self.line15.hidden= true;
                                            self.line30.hidden= false;
                                            self.line45.hidden= true;
                                            self.line60.hidden= true;
                                            self.line75.hidden= true;
                                            self.line90.hidden= true;
                                            self.lineNeg15.hidden= true;
                                            self.lineNeg30.hidden= true;
                                            self.lineNeg45.hidden= true;
                                            self.lineNeg60.hidden= true;
                                            self.lineNeg75.hidden= true;
                                            self.lineNeg90.hidden= true;
                                            
                                                score=score+1;
                                            NSLog(@"Score= %d", score);

                                            
                                        [self randomNumber];
                                            zAngle=(self.random*15)-90;
                                            self.scoreLabel.text =[NSString stringWithFormat:@"Score - %d ",score];
                                        }      if (50>=zActual && 40<=zActual){
                                            
                                            self.line0.hidden= true;
                                            self.line15.hidden= true;
                                            self.line30.hidden= true;
                                            self.line45.hidden= false;
                                            self.line60.hidden= true;
                                            self.line75.hidden= true;
                                            self.line90.hidden= true;
                                            self.lineNeg15.hidden= true;
                                            self.lineNeg30.hidden= true;
                                            self.lineNeg45.hidden= true;
                                            self.lineNeg60.hidden= true;
                                            self.lineNeg75.hidden= true;
                                            self.lineNeg90.hidden= true;
                                            
                                            
                                        }      if (65>=zActual && 55<=zActual){
                                            
                                            self.line0.hidden= true;
                                            self.line15.hidden= true;
                                            self.line30.hidden= true;
                                            self.line45.hidden= true;
                                            self.line60.hidden= false;
                                            self.line75.hidden= true;
                                            self.line90.hidden= true;
                                            self.lineNeg15.hidden= true;
                                            self.lineNeg30.hidden= true;
                                            self.lineNeg45.hidden= true;
                                            self.lineNeg60.hidden= true;
                                            self.lineNeg75.hidden= true;
                                            self.lineNeg90.hidden= true;
                                            
                                            
                                        }      if  (80>=zActual && 70<=zActual){
                                            
                                            self.line0.hidden= true;
                                            self.line15.hidden= true;
                                            self.line30.hidden= true;
                                            self.line45.hidden= true;
                                            self.line60.hidden= true;
                                            self.line75.hidden= false;
                                            self.line90.hidden= true;
                                            self.lineNeg15.hidden= true;
                                            self.lineNeg30.hidden= true;
                                            self.lineNeg45.hidden= true;
                                            self.lineNeg60.hidden= true;
                                            self.lineNeg75.hidden= true;
                                            self.lineNeg90.hidden= true;
                                            
                                            
                                        }      if (95>=zActual && 85<=zActual){
                                            
                                            self.line0.hidden= true;
                                            self.line15.hidden= true;
                                            self.line30.hidden= true;
                                            self.line45.hidden= true;
                                            self.line60.hidden= true;
                                            self.line75.hidden= true;
                                            self.line90.hidden= false;
                                            self.lineNeg15.hidden= true;
                                            self.lineNeg30.hidden= true;
                                            self.lineNeg45.hidden= true;
                                            self.lineNeg60.hidden= true;
                                            self.lineNeg75.hidden= true;
                                            self.lineNeg90.hidden= true;
                                            
                                            
                                        }
                                    }
#pragma mark 45
                                        if (zAngle==45){
                                            
                                            self.bar0.hidden= true;
                                            self.bar15.hidden= true;
                                            self.bar30.hidden= true;
                                            self.bar45.hidden= false;
                                            self.bar60.hidden= true;
                                            self.bar75.hidden= true;
                                            self.bar90.hidden= true;
                                            self.barNeg15.hidden= true;
                                            self.barNeg30.hidden= true;
                                            self.barNeg45.hidden= true;
                                            self.barNeg60.hidden= true;
                                            self.barNeg75.hidden= true;
                                            self.barNeg90.hidden= true;
                                            
                                            if (-85>=zActual && -95<=zActual){
                                                
                                                self.line0.hidden= true;
                                                self.line15.hidden= true;
                                                self.line30.hidden= true;
                                                self.line45.hidden= true;
                                                self.line60.hidden= true;
                                                self.line75.hidden= true;
                                                self.line90.hidden= true;
                                                self.lineNeg15.hidden= true;
                                                self.lineNeg30.hidden= true;
                                                self.lineNeg45.hidden= true;
                                                self.lineNeg60.hidden= true;
                                                self.lineNeg75.hidden= true;
                                                self.lineNeg90.hidden= true;
                                                
                                               
                                            }
                                            if (-70>=zActual && -80<=zActual){
                                                
                                                self.line0.hidden= true;
                                                self.line15.hidden= true;
                                                self.line30.hidden= true;
                                                self.line45.hidden= true;
                                                self.line60.hidden= true;
                                                self.line75.hidden= true;
                                                self.line90.hidden= true;
                                                self.lineNeg15.hidden= true;
                                                self.lineNeg30.hidden= true;
                                                self.lineNeg45.hidden= true;
                                                self.lineNeg60.hidden= true;
                                                self.lineNeg75.hidden= false;
                                                self.lineNeg90.hidden= true;
                                                
                                                
                                            }      if (-55>=zActual && -60<=zActual){
                                                
                                                self.line0.hidden= true;
                                                self.line15.hidden= true;
                                                self.line30.hidden= true;
                                                self.line45.hidden= true;
                                                self.line60.hidden= true;
                                                self.line75.hidden= true;
                                                self.line90.hidden= true;
                                                self.lineNeg15.hidden= true;
                                                self.lineNeg30.hidden= true;
                                                self.lineNeg45.hidden= true;
                                                self.lineNeg60.hidden= false;
                                                self.lineNeg75.hidden= true;
                                                self.lineNeg90.hidden= true;
                                                
                                                
                                            }      if (-40>=zActual && -50<=zActual){
                                                
                                                self.line0.hidden= true;
                                                self.line15.hidden= true;
                                                self.line30.hidden= true;
                                                self.line45.hidden= true;
                                                self.line60.hidden= true;
                                                self.line75.hidden= true;
                                                self.line90.hidden= true;
                                                self.lineNeg15.hidden= true;
                                                self.lineNeg30.hidden= true;
                                                self.lineNeg45.hidden= false;
                                                self.lineNeg60.hidden= true;
                                                self.lineNeg75.hidden= true;
                                                self.lineNeg90.hidden= true;
                                                
                                                
                                            }      if (-25>=zActual && -35<=zActual){
                                                
                                                self.line0.hidden= true;
                                                self.line15.hidden= true;
                                                self.line30.hidden= true;
                                                self.line45.hidden= true;
                                                self.line60.hidden= true;
                                                self.line75.hidden= true;
                                                self.line90.hidden= true;
                                                self.lineNeg15.hidden= true;
                                                self.lineNeg30.hidden= false;
                                                self.lineNeg45.hidden= true;
                                                self.lineNeg60.hidden= true;
                                                self.lineNeg75.hidden= true;
                                                self.lineNeg90.hidden= true;
                                                
                                                
                                            }      if (-10>=zActual && -20<=zActual){
                                                
                                                self.line0.hidden= true;
                                                self.line15.hidden= true;
                                                self.line30.hidden= true;
                                                self.line45.hidden= true;
                                                self.line60.hidden= true;
                                                self.line75.hidden= true;
                                                self.line90.hidden= true;
                                                self.lineNeg15.hidden= false;
                                                self.lineNeg30.hidden= true;
                                                self.lineNeg45.hidden= true;
                                                self.lineNeg60.hidden= true;
                                                self.lineNeg75.hidden= true;
                                                self.lineNeg90.hidden= true;
                                                
                                                
                                            }      if (5>=zActual && -5<=zActual){
                                                
                                                self.line0.hidden= false;
                                                self.line15.hidden= true;
                                                self.line30.hidden= true;
                                                self.line45.hidden= true;
                                                self.line60.hidden= true;
                                                self.line75.hidden= true;
                                                self.line90.hidden= true;
                                                self.lineNeg15.hidden= true;
                                                self.lineNeg30.hidden= true;
                                                self.lineNeg45.hidden= true;
                                                self.lineNeg60.hidden= true;
                                                self.lineNeg75.hidden= true;
                                                self.lineNeg90.hidden= true;
                                                
                                                
                                            }      if (20>=zActual && 10<=zActual){
                                                
                                                self.line0.hidden= true;
                                                self.line15.hidden= false;
                                                self.line30.hidden= true;
                                                self.line45.hidden= true;
                                                self.line60.hidden= true;
                                                self.line75.hidden= true;
                                                self.line90.hidden= true;
                                                self.lineNeg15.hidden= true;
                                                self.lineNeg30.hidden= true;
                                                self.lineNeg45.hidden= true;
                                                self.lineNeg60.hidden= true;
                                                self.lineNeg75.hidden= true;
                                                self.lineNeg90.hidden= true;
                                                
                                                
                                            }      if (35>=zActual && 25<=zActual){
                                                
                                                self.line0.hidden= true;
                                                self.line15.hidden= true;
                                                self.line30.hidden= false;
                                                self.line45.hidden= true;
                                                self.line60.hidden= true;
                                                self.line75.hidden= true;
                                                self.line90.hidden= true;
                                                self.lineNeg15.hidden= true;
                                                self.lineNeg30.hidden= true;
                                                self.lineNeg45.hidden= true;
                                                self.lineNeg60.hidden= true;
                                                self.lineNeg75.hidden= true;
                                                self.lineNeg90.hidden= true;
                                                
                                                
                                            }      if (50>=zActual && 40<=zActual){
                                                
                                                self.line0.hidden= true;
                                                self.line15.hidden= true;
                                                self.line30.hidden= true;
                                                self.line45.hidden= false;
                                                self.line60.hidden= true;
                                                self.line75.hidden= true;
                                                self.line90.hidden= true;
                                                self.lineNeg15.hidden= true;
                                                self.lineNeg30.hidden= true;
                                                self.lineNeg45.hidden= true;
                                                self.lineNeg60.hidden= true;
                                                self.lineNeg75.hidden= true;
                                                self.lineNeg90.hidden= true;
                                                
                                                    score=score+1;
                                                NSLog(@"Score= %d", score);

                                                
                                                 [self randomNumber];
                                                zAngle=(self.random*15)-90;
                                                self.scoreLabel.text =[NSString stringWithFormat:@"Score - %d ",score];
                                            }      if (65>=zActual && 55<=zActual){
                                                
                                                self.line0.hidden= true;
                                                self.line15.hidden= true;
                                                self.line30.hidden= true;
                                                self.line45.hidden= true;
                                                self.line60.hidden= false;
                                                self.line75.hidden= true;
                                                self.line90.hidden= true;
                                                self.lineNeg15.hidden= true;
                                                self.lineNeg30.hidden= true;
                                                self.lineNeg45.hidden= true;
                                                self.lineNeg60.hidden= true;
                                                self.lineNeg75.hidden= true;
                                                self.lineNeg90.hidden= true;
                                                
                                                
                                            }      if  (80>=zActual && 70<=zActual){
                                                
                                                self.line0.hidden= true;
                                                self.line15.hidden= true;
                                                self.line30.hidden= true;
                                                self.line45.hidden= true;
                                                self.line60.hidden= true;
                                                self.line75.hidden= false;
                                                self.line90.hidden= true;
                                                self.lineNeg15.hidden= true;
                                                self.lineNeg30.hidden= true;
                                                self.lineNeg45.hidden= true;
                                                self.lineNeg60.hidden= true;
                                                self.lineNeg75.hidden= true;
                                                self.lineNeg90.hidden= true;
                                                
                                                
                                            }      if (95>=zActual && 85<=zActual){
                                                
                                                self.line0.hidden= true;
                                                self.line15.hidden= true;
                                                self.line30.hidden= true;
                                                self.line45.hidden= true;
                                                self.line60.hidden= true;
                                                self.line75.hidden= true;
                                                self.line90.hidden= false;
                                                self.lineNeg15.hidden= true;
                                                self.lineNeg30.hidden= true;
                                                self.lineNeg45.hidden= true;
                                                self.lineNeg60.hidden= true;
                                                self.lineNeg75.hidden= true;
                                                self.lineNeg90.hidden= true;
                                                
                                                
                                            }
                                        }
#pragma mark 60
                                            if (zAngle==60){
                                                
                                                self.bar0.hidden= true;
                                                self.bar15.hidden= true;
                                                self.bar30.hidden= true;
                                                self.bar45.hidden= true;
                                                self.bar60.hidden= false;
                                                self.bar75.hidden= true;
                                                self.bar90.hidden= true;
                                                self.barNeg15.hidden= true;
                                                self.barNeg30.hidden= true;
                                                self.barNeg45.hidden= true;
                                                self.barNeg60.hidden= true;
                                                self.barNeg75.hidden= true;
                                                self.barNeg90.hidden= true;
                                                
                                                if (-85>=zActual && -95<=zActual){
                                                    
                                                    self.line0.hidden= true;
                                                    self.line15.hidden= true;
                                                    self.line30.hidden= true;
                                                    self.line45.hidden= true;
                                                    self.line60.hidden= true;
                                                    self.line75.hidden= true;
                                                    self.line90.hidden= true;
                                                    self.lineNeg15.hidden= true;
                                                    self.lineNeg30.hidden= true;
                                                    self.lineNeg45.hidden= true;
                                                    self.lineNeg60.hidden= true;
                                                    self.lineNeg75.hidden= true;
                                                    self.lineNeg90.hidden= true;
                                                    
                                                                                                   }
                                                if (-70>=zActual && -80<=zActual){
                                                    
                                                    self.line0.hidden= true;
                                                    self.line15.hidden= true;
                                                    self.line30.hidden= true;
                                                    self.line45.hidden= true;
                                                    self.line60.hidden= true;
                                                    self.line75.hidden= true;
                                                    self.line90.hidden= true;
                                                    self.lineNeg15.hidden= true;
                                                    self.lineNeg30.hidden= true;
                                                    self.lineNeg45.hidden= true;
                                                    self.lineNeg60.hidden= true;
                                                    self.lineNeg75.hidden= false;
                                                    self.lineNeg90.hidden= true;
                                                    
                                                    
                                                }      if (-55>=zActual && -60<=zActual){
                                                    
                                                    self.line0.hidden= true;
                                                    self.line15.hidden= true;
                                                    self.line30.hidden= true;
                                                    self.line45.hidden= true;
                                                    self.line60.hidden= true;
                                                    self.line75.hidden= true;
                                                    self.line90.hidden= true;
                                                    self.lineNeg15.hidden= true;
                                                    self.lineNeg30.hidden= true;
                                                    self.lineNeg45.hidden= true;
                                                    self.lineNeg60.hidden= false;
                                                    self.lineNeg75.hidden= true;
                                                    self.lineNeg90.hidden= true;
                                                    
                                                    
                                                }      if (-40>=zActual && -50<=zActual){
                                                    
                                                    self.line0.hidden= true;
                                                    self.line15.hidden= true;
                                                    self.line30.hidden= true;
                                                    self.line45.hidden= true;
                                                    self.line60.hidden= true;
                                                    self.line75.hidden= true;
                                                    self.line90.hidden= true;
                                                    self.lineNeg15.hidden= true;
                                                    self.lineNeg30.hidden= true;
                                                    self.lineNeg45.hidden= false;
                                                    self.lineNeg60.hidden= true;
                                                    self.lineNeg75.hidden= true;
                                                    self.lineNeg90.hidden= true;
                                                    
                                                    
                                                }      if (-25>=zActual && -35<=zActual){
                                                    
                                                    self.line0.hidden= true;
                                                    self.line15.hidden= true;
                                                    self.line30.hidden= true;
                                                    self.line45.hidden= true;
                                                    self.line60.hidden= true;
                                                    self.line75.hidden= true;
                                                    self.line90.hidden= true;
                                                    self.lineNeg15.hidden= true;
                                                    self.lineNeg30.hidden= false;
                                                    self.lineNeg45.hidden= true;
                                                    self.lineNeg60.hidden= true;
                                                    self.lineNeg75.hidden= true;
                                                    self.lineNeg90.hidden= true;
                                                    
                                                    
                                                }      if (-10>=zActual && -20<=zActual){
                                                    
                                                    self.line0.hidden= true;
                                                    self.line15.hidden= true;
                                                    self.line30.hidden= true;
                                                    self.line45.hidden= true;
                                                    self.line60.hidden= true;
                                                    self.line75.hidden= true;
                                                    self.line90.hidden= true;
                                                    self.lineNeg15.hidden= false;
                                                    self.lineNeg30.hidden= true;
                                                    self.lineNeg45.hidden= true;
                                                    self.lineNeg60.hidden= true;
                                                    self.lineNeg75.hidden= true;
                                                    self.lineNeg90.hidden= true;
                                                    
                                                    
                                                }      if (5>=zActual && -5<=zActual){
                                                    
                                                    self.line0.hidden= false;
                                                    self.line15.hidden= true;
                                                    self.line30.hidden= true;
                                                    self.line45.hidden= true;
                                                    self.line60.hidden= true;
                                                    self.line75.hidden= true;
                                                    self.line90.hidden= true;
                                                    self.lineNeg15.hidden= true;
                                                    self.lineNeg30.hidden= true;
                                                    self.lineNeg45.hidden= true;
                                                    self.lineNeg60.hidden= true;
                                                    self.lineNeg75.hidden= true;
                                                    self.lineNeg90.hidden= true;
                                                    
                                                    
                                                }      if (20>=zActual && 10<=zActual){
                                                    
                                                    self.line0.hidden= true;
                                                    self.line15.hidden= false;
                                                    self.line30.hidden= true;
                                                    self.line45.hidden= true;
                                                    self.line60.hidden= true;
                                                    self.line75.hidden= true;
                                                    self.line90.hidden= true;
                                                    self.lineNeg15.hidden= true;
                                                    self.lineNeg30.hidden= true;
                                                    self.lineNeg45.hidden= true;
                                                    self.lineNeg60.hidden= true;
                                                    self.lineNeg75.hidden= true;
                                                    self.lineNeg90.hidden= true;
                                                    
                                                    
                                                }      if (35>=zActual && 25<=zActual){
                                                    
                                                    self.line0.hidden= true;
                                                    self.line15.hidden= true;
                                                    self.line30.hidden= false;
                                                    self.line45.hidden= true;
                                                    self.line60.hidden= true;
                                                    self.line75.hidden= true;
                                                    self.line90.hidden= true;
                                                    self.lineNeg15.hidden= true;
                                                    self.lineNeg30.hidden= true;
                                                    self.lineNeg45.hidden= true;
                                                    self.lineNeg60.hidden= true;
                                                    self.lineNeg75.hidden= true;
                                                    self.lineNeg90.hidden= true;
                                                    
                                                    
                                                }      if (50>=zActual && 40<=zActual){
                                                    
                                                    self.line0.hidden= true;
                                                    self.line15.hidden= true;
                                                    self.line30.hidden= true;
                                                    self.line45.hidden= false;
                                                    self.line60.hidden= true;
                                                    self.line75.hidden= true;
                                                    self.line90.hidden= true;
                                                    self.lineNeg15.hidden= true;
                                                    self.lineNeg30.hidden= true;
                                                    self.lineNeg45.hidden= true;
                                                    self.lineNeg60.hidden= true;
                                                    self.lineNeg75.hidden= true;
                                                    self.lineNeg90.hidden= true;
                                                    
                                                    
                                                }      if (65>=zActual && 55<=zActual){
                                                    
                                                    self.line0.hidden= true;
                                                    self.line15.hidden= true;
                                                    self.line30.hidden= true;
                                                    self.line45.hidden= true;
                                                    self.line60.hidden= false;
                                                    self.line75.hidden= true;
                                                    self.line90.hidden= true;
                                                    self.lineNeg15.hidden= true;
                                                    self.lineNeg30.hidden= true;
                                                    self.lineNeg45.hidden= true;
                                                    self.lineNeg60.hidden= true;
                                                    self.lineNeg75.hidden= true;
                                                    self.lineNeg90.hidden= true;
                                                    
                                                        score=score+1;
                                                    NSLog(@"Score= %d", score);

                                                    
                                                    [self randomNumber];
                                                    zAngle=(self.random*15)-90;
                                                    self.scoreLabel.text =[NSString stringWithFormat:@"Score - %d ",score];

                                                }      if  (80>=zActual && 70<=zActual){
                                                    
                                                    self.line0.hidden= true;
                                                    self.line15.hidden= true;
                                                    self.line30.hidden= true;
                                                    self.line45.hidden= true;
                                                    self.line60.hidden= true;
                                                    self.line75.hidden= false;
                                                    self.line90.hidden= true;
                                                    self.lineNeg15.hidden= true;
                                                    self.lineNeg30.hidden= true;
                                                    self.lineNeg45.hidden= true;
                                                    self.lineNeg60.hidden= true;
                                                    self.lineNeg75.hidden= true;
                                                    self.lineNeg90.hidden= true;
                                                    
                                                    
                                                }      if (95>=zActual && 85<=zActual){
                                                    
                                                    self.line0.hidden= true;
                                                    self.line15.hidden= true;
                                                    self.line30.hidden= true;
                                                    self.line45.hidden= true;
                                                    self.line60.hidden= true;
                                                    self.line75.hidden= true;
                                                    self.line90.hidden= false;
                                                    self.lineNeg15.hidden= true;
                                                    self.lineNeg30.hidden= true;
                                                    self.lineNeg45.hidden= true;
                                                    self.lineNeg60.hidden= true;
                                                    self.lineNeg75.hidden= true;
                                                    self.lineNeg90.hidden= true;
                                                    
                                                    
                                                }
                                            }
#pragma mark 75
                                                if (zAngle==75){
                                                    
                                                    self.bar0.hidden= true;
                                                    self.bar15.hidden= true;
                                                    self.bar30.hidden= true;
                                                    self.bar45.hidden= true;
                                                    self.bar60.hidden= true;
                                                    self.bar75.hidden= false;
                                                    self.bar90.hidden= true;
                                                    self.barNeg15.hidden= true;
                                                    self.barNeg30.hidden= true;
                                                    self.barNeg45.hidden= true;
                                                    self.barNeg60.hidden= true;
                                                    self.barNeg75.hidden= true;
                                                    self.barNeg90.hidden= true;
                                                    
                                                    if (-85>=zActual && -95<=zActual){
                                                        
                                                        self.line0.hidden= true;
                                                        self.line15.hidden= true;
                                                        self.line30.hidden= true;
                                                        self.line45.hidden= true;
                                                        self.line60.hidden= true;
                                                        self.line75.hidden= true;
                                                        self.line90.hidden= true;
                                                        self.lineNeg15.hidden= true;
                                                        self.lineNeg30.hidden= true;
                                                        self.lineNeg45.hidden= true;
                                                        self.lineNeg60.hidden= true;
                                                        self.lineNeg75.hidden= true;
                                                        self.lineNeg90.hidden= true;
                                                        
                                                        
                                                    }
                                                    if (-70>=zActual && -80<=zActual){
                                                        
                                                        self.line0.hidden= true;
                                                        self.line15.hidden= true;
                                                        self.line30.hidden= true;
                                                        self.line45.hidden= true;
                                                        self.line60.hidden= true;
                                                        self.line75.hidden= true;
                                                        self.line90.hidden= true;
                                                        self.lineNeg15.hidden= true;
                                                        self.lineNeg30.hidden= true;
                                                        self.lineNeg45.hidden= true;
                                                        self.lineNeg60.hidden= true;
                                                        self.lineNeg75.hidden= false;
                                                        self.lineNeg90.hidden= true;
                                                        
                                                        
                                                    }      if (-55>=zActual && -60<=zActual){
                                                        
                                                        self.line0.hidden= true;
                                                        self.line15.hidden= true;
                                                        self.line30.hidden= true;
                                                        self.line45.hidden= true;
                                                        self.line60.hidden= true;
                                                        self.line75.hidden= true;
                                                        self.line90.hidden= true;
                                                        self.lineNeg15.hidden= true;
                                                        self.lineNeg30.hidden= true;
                                                        self.lineNeg45.hidden= true;
                                                        self.lineNeg60.hidden= false;
                                                        self.lineNeg75.hidden= true;
                                                        self.lineNeg90.hidden= true;
                                                        
                                                        
                                                    }      if (-40>=zActual && -50<=zActual){
                                                        
                                                        self.line0.hidden= true;
                                                        self.line15.hidden= true;
                                                        self.line30.hidden= true;
                                                        self.line45.hidden= true;
                                                        self.line60.hidden= true;
                                                        self.line75.hidden= true;
                                                        self.line90.hidden= true;
                                                        self.lineNeg15.hidden= true;
                                                        self.lineNeg30.hidden= true;
                                                        self.lineNeg45.hidden= false;
                                                        self.lineNeg60.hidden= true;
                                                        self.lineNeg75.hidden= true;
                                                        self.lineNeg90.hidden= true;
                                                        
                                                        
                                                    }      if (-25>=zActual && -35<=zActual){
                                                        
                                                        self.line0.hidden= true;
                                                        self.line15.hidden= true;
                                                        self.line30.hidden= true;
                                                        self.line45.hidden= true;
                                                        self.line60.hidden= true;
                                                        self.line75.hidden= true;
                                                        self.line90.hidden= true;
                                                        self.lineNeg15.hidden= true;
                                                        self.lineNeg30.hidden= false;
                                                        self.lineNeg45.hidden= true;
                                                        self.lineNeg60.hidden= true;
                                                        self.lineNeg75.hidden= true;
                                                        self.lineNeg90.hidden= true;
                                                        
                                                        
                                                    }      if (-10>=zActual && -20<=zActual){
                                                        
                                                        self.line0.hidden= true;
                                                        self.line15.hidden= true;
                                                        self.line30.hidden= true;
                                                        self.line45.hidden= true;
                                                        self.line60.hidden= true;
                                                        self.line75.hidden= true;
                                                        self.line90.hidden= true;
                                                        self.lineNeg15.hidden= false;
                                                        self.lineNeg30.hidden= true;
                                                        self.lineNeg45.hidden= true;
                                                        self.lineNeg60.hidden= true;
                                                        self.lineNeg75.hidden= true;
                                                        self.lineNeg90.hidden= true;
                                                        
                                                        
                                                    }      if (5>=zActual && -5<=zActual){
                                                        
                                                        self.line0.hidden= false;
                                                        self.line15.hidden= true;
                                                        self.line30.hidden= true;
                                                        self.line45.hidden= true;
                                                        self.line60.hidden= true;
                                                        self.line75.hidden= true;
                                                        self.line90.hidden= true;
                                                        self.lineNeg15.hidden= true;
                                                        self.lineNeg30.hidden= true;
                                                        self.lineNeg45.hidden= true;
                                                        self.lineNeg60.hidden= true;
                                                        self.lineNeg75.hidden= true;
                                                        self.lineNeg90.hidden= true;
                                                        
                                                        
                                                    }      if (20>=zActual && 10<=zActual){
                                                        
                                                        self.line0.hidden= true;
                                                        self.line15.hidden= false;
                                                        self.line30.hidden= true;
                                                        self.line45.hidden= true;
                                                        self.line60.hidden= true;
                                                        self.line75.hidden= true;
                                                        self.line90.hidden= true;
                                                        self.lineNeg15.hidden= true;
                                                        self.lineNeg30.hidden= true;
                                                        self.lineNeg45.hidden= true;
                                                        self.lineNeg60.hidden= true;
                                                        self.lineNeg75.hidden= true;
                                                        self.lineNeg90.hidden= true;
                                                        
                                                        
                                                    }      if (35>=zActual && 25<=zActual){
                                                        
                                                        self.line0.hidden= true;
                                                        self.line15.hidden= true;
                                                        self.line30.hidden= false;
                                                        self.line45.hidden= true;
                                                        self.line60.hidden= true;
                                                        self.line75.hidden= true;
                                                        self.line90.hidden= true;
                                                        self.lineNeg15.hidden= true;
                                                        self.lineNeg30.hidden= true;
                                                        self.lineNeg45.hidden= true;
                                                        self.lineNeg60.hidden= true;
                                                        self.lineNeg75.hidden= true;
                                                        self.lineNeg90.hidden= true;
                                                        
                                                        
                                                    }      if (50>=zActual && 40<=zActual){
                                                        
                                                        self.line0.hidden= true;
                                                        self.line15.hidden= true;
                                                        self.line30.hidden= true;
                                                        self.line45.hidden= false;
                                                        self.line60.hidden= true;
                                                        self.line75.hidden= true;
                                                        self.line90.hidden= true;
                                                        self.lineNeg15.hidden= true;
                                                        self.lineNeg30.hidden= true;
                                                        self.lineNeg45.hidden= true;
                                                        self.lineNeg60.hidden= true;
                                                        self.lineNeg75.hidden= true;
                                                        self.lineNeg90.hidden= true;
                                                        
                                                        
                                                    }      if (65>=zActual && 55<=zActual){
                                                        
                                                        self.line0.hidden= true;
                                                        self.line15.hidden= true;
                                                        self.line30.hidden= true;
                                                        self.line45.hidden= true;
                                                        self.line60.hidden= false;
                                                        self.line75.hidden= true;
                                                        self.line90.hidden= true;
                                                        self.lineNeg15.hidden= true;
                                                        self.lineNeg30.hidden= true;
                                                        self.lineNeg45.hidden= true;
                                                        self.lineNeg60.hidden= true;
                                                        self.lineNeg75.hidden= true;
                                                        self.lineNeg90.hidden= true;
                                                        
                                                        
                                                    }      if  (80>=zActual && 70<=zActual){
                                                        
                                                        self.line0.hidden= true;
                                                        self.line15.hidden= true;
                                                        self.line30.hidden= true;
                                                        self.line45.hidden= true;
                                                        self.line60.hidden= true;
                                                        self.line75.hidden= false;
                                                        self.line90.hidden= true;
                                                        self.lineNeg15.hidden= true;
                                                        self.lineNeg30.hidden= true;
                                                        self.lineNeg45.hidden= true;
                                                        self.lineNeg60.hidden= true;
                                                        self.lineNeg75.hidden= true;
                                                        self.lineNeg90.hidden= true;
                                                        
                                                            score=score+1;
                                                        NSLog(@"Score= %d", score);

                                                        
                                                        [self randomNumber];
                                                        zAngle=(self.random*15)-90;
                                                        self.scoreLabel.text =[NSString stringWithFormat:@"Score - %d ",score];
                                                    }      if (95>=zActual && 85<=zActual){
                                                        
                                                        self.line0.hidden= true;
                                                        self.line15.hidden= true;
                                                        self.line30.hidden= true;
                                                        self.line45.hidden= true;
                                                        self.line60.hidden= true;
                                                        self.line75.hidden= true;
                                                        self.line90.hidden= false;
                                                        self.lineNeg15.hidden= true;
                                                        self.lineNeg30.hidden= true;
                                                        self.lineNeg45.hidden= true;
                                                        self.lineNeg60.hidden= true;
                                                        self.lineNeg75.hidden= true;
                                                        self.lineNeg90.hidden= true;
                                                        
                                                        
                                                    }
                                                }
#pragma mark 90
                                                    if (zAngle==90){
                                                        
                                                        self.bar0.hidden= true;
                                                        self.bar15.hidden= true;
                                                        self.bar30.hidden= true;
                                                        self.bar45.hidden= true;
                                                        self.bar60.hidden= true;
                                                        self.bar75.hidden= true;
                                                        self.bar90.hidden= false;
                                                        self.barNeg15.hidden= true;
                                                        self.barNeg30.hidden= true;
                                                        self.barNeg45.hidden= true;
                                                        self.barNeg60.hidden= true;
                                                        self.barNeg75.hidden= true;
                                                        self.barNeg90.hidden= true;
                                                        
                                                        if (-85>=zActual && -95<=zActual){
                                                            
                                                            self.line0.hidden= true;
                                                            self.line15.hidden= true;
                                                            self.line30.hidden= true;
                                                            self.line45.hidden= true;
                                                            self.line60.hidden= true;
                                                            self.line75.hidden= true;
                                                            self.line90.hidden= true;
                                                            self.lineNeg15.hidden= true;
                                                            self.lineNeg30.hidden= true;
                                                            self.lineNeg45.hidden= true;
                                                            self.lineNeg60.hidden= true;
                                                            self.lineNeg75.hidden= true;
                                                            self.lineNeg90.hidden= true;
                                                            
                                                            
                                                        }
                                                        if (-70>=zActual && -80<=zActual){
                                                            
                                                            self.line0.hidden= true;
                                                            self.line15.hidden= true;
                                                            self.line30.hidden= true;
                                                            self.line45.hidden= true;
                                                            self.line60.hidden= true;
                                                            self.line75.hidden= true;
                                                            self.line90.hidden= true;
                                                            self.lineNeg15.hidden= true;
                                                            self.lineNeg30.hidden= true;
                                                            self.lineNeg45.hidden= true;
                                                            self.lineNeg60.hidden= true;
                                                            self.lineNeg75.hidden= false;
                                                            self.lineNeg90.hidden= true;
                                                            
                                                            
                                                        }      if (-55>=zActual && -60<=zActual){
                                                            
                                                            self.line0.hidden= true;
                                                            self.line15.hidden= true;
                                                            self.line30.hidden= true;
                                                            self.line45.hidden= true;
                                                            self.line60.hidden= true;
                                                            self.line75.hidden= true;
                                                            self.line90.hidden= true;
                                                            self.lineNeg15.hidden= true;
                                                            self.lineNeg30.hidden= true;
                                                            self.lineNeg45.hidden= true;
                                                            self.lineNeg60.hidden= false;
                                                            self.lineNeg75.hidden= true;
                                                            self.lineNeg90.hidden= true;
                                                            
                                                            
                                                        }      if (-40>=zActual && -50<=zActual){
                                                            
                                                            self.line0.hidden= true;
                                                            self.line15.hidden= true;
                                                            self.line30.hidden= true;
                                                            self.line45.hidden= true;
                                                            self.line60.hidden= true;
                                                            self.line75.hidden= true;
                                                            self.line90.hidden= true;
                                                            self.lineNeg15.hidden= true;
                                                            self.lineNeg30.hidden= true;
                                                            self.lineNeg45.hidden= false;
                                                            self.lineNeg60.hidden= true;
                                                            self.lineNeg75.hidden= true;
                                                            self.lineNeg90.hidden= true;
                                                            
                                                            
                                                        }      if (-25>=zActual && -35<=zActual){
                                                            
                                                            self.line0.hidden= true;
                                                            self.line15.hidden= true;
                                                            self.line30.hidden= true;
                                                            self.line45.hidden= true;
                                                            self.line60.hidden= true;
                                                            self.line75.hidden= true;
                                                            self.line90.hidden= true;
                                                            self.lineNeg15.hidden= true;
                                                            self.lineNeg30.hidden= false;
                                                            self.lineNeg45.hidden= true;
                                                            self.lineNeg60.hidden= true;
                                                            self.lineNeg75.hidden= true;
                                                            self.lineNeg90.hidden= true;
                                                            
                                                            
                                                        }      if (-10>=zActual && -20<=zActual){
                                                            
                                                            self.line0.hidden= true;
                                                            self.line15.hidden= true;
                                                            self.line30.hidden= true;
                                                            self.line45.hidden= true;
                                                            self.line60.hidden= true;
                                                            self.line75.hidden= true;
                                                            self.line90.hidden= true;
                                                            self.lineNeg15.hidden= false;
                                                            self.lineNeg30.hidden= true;
                                                            self.lineNeg45.hidden= true;
                                                            self.lineNeg60.hidden= true;
                                                            self.lineNeg75.hidden= true;
                                                            self.lineNeg90.hidden= true;
                                                            
                                                            
                                                        }      if (5>=zActual && -5<=zActual){
                                                            
                                                            self.line0.hidden= false;
                                                            self.line15.hidden= true;
                                                            self.line30.hidden= true;
                                                            self.line45.hidden= true;
                                                            self.line60.hidden= true;
                                                            self.line75.hidden= true;
                                                            self.line90.hidden= true;
                                                            self.lineNeg15.hidden= true;
                                                            self.lineNeg30.hidden= true;
                                                            self.lineNeg45.hidden= true;
                                                            self.lineNeg60.hidden= true;
                                                            self.lineNeg75.hidden= true;
                                                            self.lineNeg90.hidden= true;
                                                            
                                                            
                                                        }      if (20>=zActual && 10<=zActual){
                                                            
                                                            self.line0.hidden= true;
                                                            self.line15.hidden= false;
                                                            self.line30.hidden= true;
                                                            self.line45.hidden= true;
                                                            self.line60.hidden= true;
                                                            self.line75.hidden= true;
                                                            self.line90.hidden= true;
                                                            self.lineNeg15.hidden= true;
                                                            self.lineNeg30.hidden= true;
                                                            self.lineNeg45.hidden= true;
                                                            self.lineNeg60.hidden= true;
                                                            self.lineNeg75.hidden= true;
                                                            self.lineNeg90.hidden= true;
                                                            
                                                            
                                                        }      if (35>=zActual && 25<=zActual){
                                                            
                                                            self.line0.hidden= true;
                                                            self.line15.hidden= true;
                                                            self.line30.hidden= false;
                                                            self.line45.hidden= true;
                                                            self.line60.hidden= true;
                                                            self.line75.hidden= true;
                                                            self.line90.hidden= true;
                                                            self.lineNeg15.hidden= true;
                                                            self.lineNeg30.hidden= true;
                                                            self.lineNeg45.hidden= true;
                                                            self.lineNeg60.hidden= true;
                                                            self.lineNeg75.hidden= true;
                                                            self.lineNeg90.hidden= true;
                                                            
                                                            
                                                        }      if (50>=zActual && 40<=zActual){
                                                            
                                                            self.line0.hidden= true;
                                                            self.line15.hidden= true;
                                                            self.line30.hidden= true;
                                                            self.line45.hidden= false;
                                                            self.line60.hidden= true;
                                                            self.line75.hidden= true;
                                                            self.line90.hidden= true;
                                                            self.lineNeg15.hidden= true;
                                                            self.lineNeg30.hidden= true;
                                                            self.lineNeg45.hidden= true;
                                                            self.lineNeg60.hidden= true;
                                                            self.lineNeg75.hidden= true;
                                                            self.lineNeg90.hidden= true;
                                                            
                                                            
                                                        }      if (65>=zActual && 55<=zActual){
                                                            
                                                            self.line0.hidden= true;
                                                            self.line15.hidden= true;
                                                            self.line30.hidden= true;
                                                            self.line45.hidden= true;
                                                            self.line60.hidden= false;
                                                            self.line75.hidden= true;
                                                            self.line90.hidden= true;
                                                            self.lineNeg15.hidden= true;
                                                            self.lineNeg30.hidden= true;
                                                            self.lineNeg45.hidden= true;
                                                            self.lineNeg60.hidden= true;
                                                            self.lineNeg75.hidden= true;
                                                            self.lineNeg90.hidden= true;
                                                            
                                                            
                                                        }      if  (80>=zActual && 70<=zActual){
                                                            
                                                            self.line0.hidden= true;
                                                            self.line15.hidden= true;
                                                            self.line30.hidden= true;
                                                            self.line45.hidden= true;
                                                            self.line60.hidden= true;
                                                            self.line75.hidden= false;
                                                            self.line90.hidden= true;
                                                            self.lineNeg15.hidden= true;
                                                            self.lineNeg30.hidden= true;
                                                            self.lineNeg45.hidden= true;
                                                            self.lineNeg60.hidden= true;
                                                            self.lineNeg75.hidden= true;
                                                            self.lineNeg90.hidden= true;
                                                            
                                                            
                                                        }      if (95>=zActual && 85<=zActual){
                                                            
                                                            self.line0.hidden= true;
                                                            self.line15.hidden= true;
                                                            self.line30.hidden= true;
                                                            self.line45.hidden= true;
                                                            self.line60.hidden= true;
                                                            self.line75.hidden= true;
                                                            self.line90.hidden= false;
                                                            self.lineNeg15.hidden= true;
                                                            self.lineNeg30.hidden= true;
                                                            self.lineNeg45.hidden= true;
                                                            self.lineNeg60.hidden= true;
                                                            self.lineNeg75.hidden= true;
                                                            self.lineNeg90.hidden= true;
                                                            
                                                            [self randomNumber];
                                                             zAngle=(self.random*15)-90;
                                                            self.scoreLabel.text =[NSString stringWithFormat:@"Score - %d ",score];
                                                        }
                                                    }
}



@end
