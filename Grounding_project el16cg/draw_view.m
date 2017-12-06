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
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    CGFloat height = [UIScreen mainScreen].bounds.size.height;
    //sets the value for width and height as an integar, used to centre circles
  
    CGColorRef white = [[UIColor whiteColor] CGColor];

    CGColorRef green = [[UIColor greenColor] CGColor];

    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextClearRect(context, self.bounds);

    CGContextSetFillColorWithColor(context, white);
    CGContextFillRect(context, CGRectMake(0,0,width,height));
// white rectangle to make background
    
    CGContextSetFillColorWithColor(context,white);
    
    CGContextMoveToPoint(context ,0,100);
    CGContextAddLineToPoint(context, 100, 0);
    CGContextAddLineToPoint(context, 0, 200);
    
    CGContextClosePath(context);
}
//
//    
//  
//    
    @end

