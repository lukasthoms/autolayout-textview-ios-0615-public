//
//  ViewController.m
//  FISAutoLayout
//
//  Created by Lukas Thoms on 6/29/15.
//  Copyright (c) 2015 Lukas Thoms. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view removeConstraints:self.view.constraints];
    
    self.textView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.textView removeConstraints:self.textView.constraints];
    
    self.button1.translatesAutoresizingMaskIntoConstraints = NO;
    [self.button1 removeConstraints:self.button1.constraints];
    
    self.button2.translatesAutoresizingMaskIntoConstraints = NO;
    [self.button2 removeConstraints:self.button2.constraints];

    NSLayoutConstraint *textLeft = [NSLayoutConstraint constraintWithItem:self.textView
                                                                attribute:NSLayoutAttributeLeft
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.view
                                                                attribute:NSLayoutAttributeLeft
                                                               multiplier:1
                                                                 constant:10];
    [self.view addConstraint:textLeft];
    
    NSLayoutConstraint *textRight = [NSLayoutConstraint constraintWithItem:self.textView
                                                                 attribute:NSLayoutAttributeRight
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.view
                                                                 attribute:NSLayoutAttributeRight
                                                                multiplier:1
                                                                  constant:-10];
    [self.view addConstraint:textRight];
    
    NSLayoutConstraint *textTop = [NSLayoutConstraint constraintWithItem:self.textView
                                                              attribute:NSLayoutAttributeTop
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.view
                                                              attribute:NSLayoutAttributeTop
                                                             multiplier:1
                                                               constant:20];
    [self.view addConstraint:textTop];
    
    NSLayoutConstraint *textBottom = [NSLayoutConstraint constraintWithItem:self.textView
                                                               attribute:NSLayoutAttributeBottom
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.button2
                                                               attribute:NSLayoutAttributeTop
                                                              multiplier:1
                                                                constant:-20];
    [self.view addConstraint:textBottom];
    
    NSLayoutConstraint *button2Right = [NSLayoutConstraint constraintWithItem:self.button2
                                                                    attribute:NSLayoutAttributeRight
                                                                    relatedBy: NSLayoutRelationEqual
                                                                       toItem:self.view
                                                                    attribute:NSLayoutAttributeRight
                                                                   multiplier:1
                                                                     constant:-10];
    [self.view addConstraint:button2Right];
    
    NSLayoutConstraint *button2Bottom = [NSLayoutConstraint constraintWithItem:self.button2
                                                                    attribute:NSLayoutAttributeBottom
                                                                    relatedBy: NSLayoutRelationEqual
                                                                       toItem:self.view
                                                                    attribute:NSLayoutAttributeBottom
                                                                   multiplier:1
                                                                     constant:-10];
    [self.view addConstraint:button2Bottom];
    
    NSLayoutConstraint *button1Left = [NSLayoutConstraint constraintWithItem:self.button1
                                                                     attribute:NSLayoutAttributeLeft
                                                                     relatedBy: NSLayoutRelationEqual
                                                                        toItem:self.view
                                                                     attribute:NSLayoutAttributeLeft
                                                                    multiplier:1
                                                                      constant:10];
    [self.view addConstraint:button1Left];
    
    NSLayoutConstraint *button1Bottom = [NSLayoutConstraint constraintWithItem:self.button1
                                                                     attribute:NSLayoutAttributeBottom
                                                                     relatedBy: NSLayoutRelationEqual
                                                                        toItem:self.view
                                                                     attribute:NSLayoutAttributeBottom
                                                                    multiplier:1
                                                                      constant:-10];
    [self.view addConstraint:button1Bottom];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
