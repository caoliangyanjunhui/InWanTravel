//
//  MainNavigationController.m
//  InWanTravel
//
//  Created by Gavin on 14-4-11.
//  Copyright (c) 2014年 InWanTech. All rights reserved.
//

#import "MainNavigationController.h"

@interface MainNavigationController ()

@end

@implementation MainNavigationController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        UIColor *bgColor = [UIColor colorWithRed:0x29/255.0 green:0x66/255.0 blue:0xC3/255.0 alpha:1.0f];
        [self setNavigationBarColor:bgColor];
        [self.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)setNavigationBarColor:(UIColor *)color
{
    NSArray *ver = [[UIDevice currentDevice].systemVersion componentsSeparatedByString:@"."];
    if ([[ver objectAtIndex:0] intValue] >= 7) {
        self.navigationBar.barTintColor = color;
        self.navigationBar.translucent = NO;
    }else {
        self.navigationBar.tintColor = color;
    }
}

@end
