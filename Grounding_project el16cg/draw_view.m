//
//  draw_view.m
//  Grounding_project el16cg
//
//  Created by Conor Gilbert [el16cg] on 24/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "draw_view.h"

NSTimer *timer;
int MainInt;


@implementation draw_view


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
//- (void)drawRect:(CGRect)rect {
//    // Drawing code
//
//    
//    int r=100+self.BVC.d;
//    // r is the radius
//    // d is the change of the radius ad is time dependant
//
//    
//    CGFloat width = [UIScreen mainScreen].bounds.size.width;
//    CGFloat height = [UIScreen mainScreen].bounds.size.height;
//    //sets the value for width and height as an integar, used to centre circles
//    
//    
//    CGColorRef white = [[UIColor whiteColor] CGColor];
//    CGColorRef yellow = [[UIColor yellowColor] CGColor];
//    CGColorRef green = [[UIColor greenColor] CGColor];
//    
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextClearRect(context, self.bounds);
//    
//    CGContextSetFillColorWithColor(context, white);
//    CGContextFillRect(context, CGRectMake(0,0,width,height));
//// white rectangle to make background
//    
// while (1) {
////        
////
////     while (d<200) {
//////           d=d+1;
//////         NSTimer *timer;
//////         
//////         timer = [NSTimer scheduledTimerWithTimeInterval: 0.5
//////                                                  target: self
//////                                                selector: @selector(handleTimer1:)
//////                                                userInfo: nil
//////                                                 repeats: YES];
////       };
////       while (d>0) {
////           d=d-1;
////       };
////       
//  
//
//
//    CGContextSetFillColorWithColor(context, yellow);
//    CGContextFillEllipseInRect(context, CGRectMake((width-2*r)/2, (height-2*r)/2, 2*r, 2*r));
//    
//    CGContextSetFillColorWithColor(context, white);
//    CGContextFillEllipseInRect(context, CGRectMake((width-1.5*r)/2, (height-1.5*r)/2, 1.5*r, 1.5*r));
//
//    CGContextSetFillColorWithColor(context, green);
//    CGContextFillEllipseInRect(context, CGRectMake((width-r)/2, (height-r)/2, r, r));
//
//   }
//};
//
//-(void)handleTimer1:(NSTimer *)timer {
//    //stuff that happens on tick
//}
//
//    
//  
//    
    @end

