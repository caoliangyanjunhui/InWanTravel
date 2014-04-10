//
//  AppDelegate.h
//  InWanTravel
//
//  Created by Gavin on 14-4-11.
//  Copyright (c) 2014年 InWanTech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainNavigationController.h"
#import "WebBrowserViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    MainNavigationController *homeNavigationController;
    WebBrowserViewController *browserViewController;
}

@property (strong, nonatomic) UIWindow *window;

@end
