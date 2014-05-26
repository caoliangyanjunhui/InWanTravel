//
//  HomeViewController.m
//  InWanTravel
//
//  Created by Gavin on 14-5-26.
//  Copyright (c) 2014年 InWanTech. All rights reserved.
//

#import "HomeViewController.h"
#import "CouponViewController.h"
#import "BookCarViewController.h"

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
        [bookCarButton addTarget:self action:@selector(bookCarClicked:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:bookCarButton];
        
        UIButton *couponButton = [UIButton buttonWithType:UIButtonTypeCustom];
        couponButton.frame = CGRectMake(0, 280, 320, 290);
        [couponButton setBackgroundImage:[UIImage imageNamed:@"coupon"] forState:UIControlStateNormal];
        [couponButton addTarget:self action:@selector(couponClicked:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:couponButton];
    }
    return self;
}

- (void)bookCarClicked:(id)sender
{
    NSLog(@"bookCarClicked");
    BookCarViewController *bookCarVC = [[BookCarViewController alloc]initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:bookCarVC animated:YES];
}

- (void)couponClicked:(id)sender
{
    NSLog(@"couponClicked");
    CouponViewController *couponVC = [[CouponViewController alloc]initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:couponVC animated:YES];
}

@end
