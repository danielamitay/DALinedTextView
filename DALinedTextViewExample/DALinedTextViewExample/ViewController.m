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
	// Do any additional setup after loading the view, typically from a nib.
    self.textView = [[DALinedTextView alloc] init];
    self.textView.frame = self.view.bounds;
    self.textView.autoresizingMask = (UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth);
    [self.view addSubview:self.textView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
