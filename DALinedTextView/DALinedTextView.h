//
//  DALinedTextView.h
//  DALinedTextView
//
//  Created by Daniel Amitay on 5/12/13.
//  Copyright (c) 2013 Daniel Amitay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DALinedTextView : UITextView

@property (nonatomic, copy) UIColor *horizontalLineColor;
@property (nonatomic, copy) UIColor *verticalLineColor;

@property (nonatomic) UIEdgeInsets margins;

@end
