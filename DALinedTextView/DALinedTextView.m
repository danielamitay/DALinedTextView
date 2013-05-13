//
//  DALinedTextView.m
//  DALinedTextView
//
//  Created by Daniel Amitay on 5/12/13.
//  Copyright (c) 2013 Daniel Amitay. All rights reserved.
//

#import "DALinedTextView.h"

@implementation DALinedTextView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    // Drawing code
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(context, self.horizontalLineColor.CGColor);
    CGContextSetLineWidth(context, 1.0f);
    CGContextBeginPath(context);
    
    CGFloat baseOffset = 8.0f + self.font.descender;
    NSUInteger numberOfLines = (self.contentSize.height + self.bounds.size.height) / self.font.lineHeight;
    for (NSInteger line = 0; line < numberOfLines; ++line)
    {
        CGFloat linePointY = (baseOffset + (self.font.lineHeight * line));
        CGContextMoveToPoint(context, self.bounds.origin.x, linePointY);
        CGContextAddLineToPoint(context, self.bounds.size.width, linePointY);
    }
    CGContextClosePath(context);
    CGContextStrokePath(context);
    
    CGContextSetStrokeColorWithColor(context, self.verticalLineColor.CGColor);
    CGContextMoveToPoint(context, -1.0f, -self.bounds.size.height);
    CGContextAddLineToPoint(context, -1.0f, self.contentSize.height + self.bounds.size.height);
    CGContextClosePath(context);
    CGContextStrokePath(context);
}

#pragma mark - Property methods

- (void)setHorizontalLineColor:(UIColor *)horizontalLineColor
{
    _horizontalLineColor = horizontalLineColor;
    [self setNeedsDisplay];
}

- (void)setVerticalLineColor:(UIColor *)verticalLineColor
{
    _verticalLineColor = verticalLineColor;
    [self setNeedsDisplay];
}

- (void)setMargins:(UIEdgeInsets)margins
{
    _margins = margins;
}

@end
