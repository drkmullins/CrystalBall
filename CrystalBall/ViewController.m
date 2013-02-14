//
//  ViewController.m
//  CrystalBall
//
//  Created by Derek Mullins on 2/9/13.
//  Copyright (c) 2013 Derek Mullins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.backgroundImage.animationImages = @[
                                             [UIImage imageNamed:@"cball00001"],
                                             [UIImage imageNamed:@"cball00002"],
                                             [UIImage imageNamed:@"cball00003"],
                                             [UIImage imageNamed:@"cball00004"],
                                             [UIImage imageNamed:@"cball00005"],
                                             [UIImage imageNamed:@"cball00006"],
                                             [UIImage imageNamed:@"cball00007"],
                                             [UIImage imageNamed:@"cball00008"],
                                             [UIImage imageNamed:@"cball00009"],
                                             [UIImage imageNamed:@"cball00010"],
                                             [UIImage imageNamed:@"cball00011"],
                                             [UIImage imageNamed:@"cball00012"],
                                             [UIImage imageNamed:@"cball00013"],
                                             [UIImage imageNamed:@"cball00014"],
                                             [UIImage imageNamed:@"cball00015"],
                                             [UIImage imageNamed:@"cball00016"],
                                             [UIImage imageNamed:@"cball00017"],
                                             [UIImage imageNamed:@"cball00018"],
                                             [UIImage imageNamed:@"cball00019"],
                                             [UIImage imageNamed:@"cball00020"],
                                             [UIImage imageNamed:@"cball00021"],
                                             [UIImage imageNamed:@"cball00022"],
                                             [UIImage imageNamed:@"cball00023"],
                                             [UIImage imageNamed:@"cball00024"]];
    self.backgroundImage.animationDuration = 1.0;
    self.backgroundImage.animationRepeatCount = 1;
    
    self.predictionArray = [[NSArray alloc] initWithObjects:@"It is certain",
                        @"It is decidedly so",
                        @"No",
                        @"Doubtful",
                        @"Ask again",
                        nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)canBecomeFirstResponder
{
    return YES;
}

- (void)makePrediction
{
    NSUInteger index = arc4random_uniform(self.predictionArray.count);
    self.predictionLabel.text = [self.predictionArray objectAtIndex:index];
    [self.backgroundImage startAnimating];
    
    [UIView animateWithDuration:2.0 animations:^{
        self.predictionLabel.alpha = 1.0;
    }];
}

-(void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if ( motion == UIEventSubtypeMotionShake)
    {
        self.predictionLabel.text = nil;
        self.predictionLabel.alpha = 0.0;
        [self makePrediction];
    }
}

-(void)motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    NSLog(@"Motion cancelled");
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.predictionLabel.text = nil;
    self.predictionLabel.alpha = 0.0;
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self makePrediction];
}

@end
