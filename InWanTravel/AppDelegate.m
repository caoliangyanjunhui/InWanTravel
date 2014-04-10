//
//  AppDelegate.m
//  InWanTravel
//
//  Created by Gavin on 14-4-11.
//  Copyright (c) 2014年 InWanTech. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    UIColor *bgColor = [UIColor colorWithRed:0x29/255.0 green:0x66/255.0 blue:0xC3/255.0 alpha:1.0f];
    self.window.backgroundColor = [UIColor whiteColor];
    homeNavigationController = [[UINavigationController alloc]initWithNibName:nil bundle:nil];
    self.window.rootViewController = homeNavigationController;
    browserViewController = [[WebBrowserViewController alloc]initWithNibName:nil bundle:nil];
    [self setNavigationBarColor:bgColor];
    [homeNavigationController pushViewController:browserViewController animated:NO];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)setNavigationBarColor:(UIColor *)color
{
    NSArray *ver = [[UIDevice currentDevice].systemVersion componentsSeparatedByString:@"."];
    if ([[ver objectAtIndex:0] intValue] >= 7) {
        homeNavigationController.navigationBar.barTintColor = color;
        homeNavigationController.navigationBar.translucent = NO;
    }else {
        homeNavigationController.navigationBar.tintColor = color;
    }
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
