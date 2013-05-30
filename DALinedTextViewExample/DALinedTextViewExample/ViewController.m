//
//  ViewController.m
//  DALinedTextViewExample
//
//  Created by Daniel Amitay on 5/12/13.
//  Copyright (c) 2013 Daniel Amitay. All rights reserved.
//

#import "ViewController.h"
#import "DALinedTextView.h"

@interface ViewController ()

@property (nonatomic, strong) DALinedTextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.textView = [[DALinedTextView alloc] init];
    self.textView.frame = self.view.bounds;
    self.textView.autoresizingMask = (UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth);
    [self.view addSubview:self.textView];
    
    self.textView.text =
    @"DALinedTextView"
    @"\n\n\n"
    @"`DALinedTextView` is a `UITextView` subclass that draws ruled lines to the view, similar to iOS' built-in Notes app. The lines conform to the appropriate line-height for the currently set `UIFont`."
    @"\n\n"
    @"`DALinedTextView` is special because it was built with performance and appropriate behavior in mind. Most Q&A and OSS solutions involve image-based backgrounds or overzealous drawing code. For most applications such implementations are great, but `DALinedTextView` was built with 1000-line (or more) `UITextView`s in mind."
    @"\n\n"
    @"Performance decisions are commented so as to provide insight into the thought process behind `DALinedTextView`. The current `-drawRect:` implementation takes as little as 1ms on an iPhone 5.";
}

@end
