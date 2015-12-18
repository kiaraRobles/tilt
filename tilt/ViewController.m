//
//  ViewController.m
//  tilt
//
//  Created by Kiara Robles on 11/24/15.
//  Copyright © 2015 kiaraRobles. All rights reserved.
//

#import "ViewController.h"
#import <UIKit/UIKit.h>
#import <CoreMotion/CoreMotion.h>

@interface ViewController ()

@property (nonatomic) CMMotionManager *motionManager;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.motionManager = [[CMMotionManager alloc] init];
    [self.motionManager startDeviceMotionUpdatesToQueue:[NSOperationQueue mainQueue] withHandler:^(CMDeviceMotion * _Nullable motion, NSError * _Nullable error) {
        NSLog(@"Pitch: %f, Roll: %f, Yaw: %f", motion.attitude.pitch, motion.attitude.roll, motion.attitude.yaw);
    }];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
