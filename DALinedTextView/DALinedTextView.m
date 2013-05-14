//
//  DALinedTextView.m
//  DALinedTextView
//
//  Created by Daniel Amitay on 5/12/13.
//  Copyright (c) 2013 Daniel Amitay. All rights reserved.
//

#import "DALinedTextView.h"

#define DEFAULT_HORIZONTAL_COLOR    [UIColor colorWithRed:0.722f green:0.910f blue:0.980f alpha:0.7f]
#define DEFAULT_VERTICAL_COLOR      [UIColor colorWithRed:0.957f green:0.416f blue:0.365f alpha:0.7f]
#define DEFAULT_MARGINS             UIEdgeInsetsMake(10.0f, 10.0f, 0.0f, 10.0f)

@implementation DALinedTextView

#pragma mark - Superclass overrides

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        // Initialization code
        UIFont *font = self.font;
        self.font = nil;
        self.font = font;
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    // Drawing code
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 1.0f);
    
    if (self.horizontalLineColor)
    {
        CGContextSetStrokeColorWithColor(context, self.horizontalLineColor.CGColor);
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
    }
    
    if (self.verticalLineColor)
    {
        CGContextSetStrokeColorWithColor(context, self.verticalLineColor.CGColor);
        CGContextMoveToPoint(context, -1.0f, -self.bounds.size.height);
        CGContextAddLineToPoint(context, -1.0f, self.contentSize.height + self.bounds.size.height);
        CGContextClosePath(context);
        CGContextStrokePath(context);
    }
}

- (void)setFont:(UIFont *)font
{
    [super setFont:font];
    [self setNeedsDisplay];
}

- (void)setFrame:(CGRect)frame
{
    [super setFrame:frame];
    [self setNeedsDisplay];
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
