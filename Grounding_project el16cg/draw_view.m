//
//  draw_view.m
//  Grounding_project el16cg
//
//  Created by Conor Gilbert [el16cg] on 24/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "draw_view.h"

@implementation draw_view


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    CGFloat height = [UIScreen mainScreen].bounds.size.height;
    
    
    CGColorRef white = [[UIColor whiteColor] CGColor];
    CGColorRef blue = [[UIColor blueColor] CGColor];
    CGColorRef yellow = [[UIColor yellowColor] CGColor];
    CGColorRef green = [[UIColor greenColor] CGColor];
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextClearRect(context, self.bounds);
    
    CGContextSetFillColorWithColor(context, white);
    CGContextFillRect(context, CGRectMake(0,0,width,height));
// white rectangle to make background
    
    CGContextSetFillColorWithColor(context, yellow);
    CGContextFillEllipseInRect(context, CGRectMake((width-200)/2, (height-200)/2, 200, 200));
    
    CGContextSetFillColorWithColor(context, white);
    CGContextFillEllipseInRect(context, CGRectMake((width-150)/2, (height-150)/2, 150, 150));

    CGContextSetFillColorWithColor(context, green);
    CGContextFillEllipseInRect(context, CGRectMake((width-100)/2, (height-100)/2, 100, 100));
    
}


@end
