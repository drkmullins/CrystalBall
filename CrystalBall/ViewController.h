//
//  ViewController.h
//  CrystalBall
//
//  Created by Derek Mullins on 2/9/13.
//  Copyright (c) 2013 Derek Mullins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *predictionLabel;
@property (strong, nonatomic) NSArray *predictionArray;
@property (strong, nonatomic) IBOutlet UIImageView *backgroundImage;
- (void)makePrediction;

@end
