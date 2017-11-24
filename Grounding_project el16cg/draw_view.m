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
    CGColorRef yellow = [[UIColor yellowColor] CGColor];
    CGColorRef green = [[UIColor greenColor] CGColor];
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextClearRect(context, self.bounds);
    
    
    CGContextSetFillColorWithColor(context, green);
    CGContextFillEllipseInRect(context, CGRectMake(width/2, height/2, 100, 100));
    
}


@end
