//
//  HomeViewController.m
//  InWanTravel
//
//  Created by Gavin on 14-5-26.
//  Copyright (c) 2014年 InWanTech. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
        
        UIButton *bookCarButton = [UIButton buttonWithType:UIButtonTypeCustom];
        bookCarButton.frame = CGRectMake(0, 0, 320, 280);
        [bookCarButton setBackgroundImage:[UIImage imageNamed:@"airportCar"] forState:UIControlStateNormal];
        [self.view addSubview:bookCarButton];
        
        UIButton *couponButton = [UIButton buttonWithType:UIButtonTypeCustom];
        couponButton.frame = CGRectMake(0, 280, 320, 290);
        [couponButton setBackgroundImage:[UIImage imageNamed:@"coupon"] forState:UIControlStateNormal];
        [self.view addSubview:couponButton];
    }
    return self;
}

@end
