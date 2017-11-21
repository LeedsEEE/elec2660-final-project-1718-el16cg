//
//  Shapes.m
//  Grounding_project el16cg
//
//  Created by Conor Gilbert [el16cg] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "Shapes.h"

@implementation Shapes


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGColorRef green = [[UIColor greenColor] CGColor];
    CGColorRef red = [[UIColor redColor] CGColor];
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextClearRect(context, self.bounds);
    
    CGContextSetFillColorWithColor(context, green);
    CGContextFillRect(context, CGRectMake(10, 10, 100, 100));
    
    CGContextSetFillColorWithColor(context, red);
    CGContextFillEllipseInRect(context, CGRectMake(130, 200, 100, 100));

    
}


@end
