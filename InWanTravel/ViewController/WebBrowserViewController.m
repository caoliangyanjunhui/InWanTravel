//
//  WebBrowserViewController.m
//  InWanTravel
//
//  Created by Gavin on 14-4-11.
//  Copyright (c) 2014年 InWanTech. All rights reserved.
//

#import "WebBrowserViewController.h"
#import "CouponViewController.h"

@interface WebBrowserViewController ()

@end

@implementation WebBrowserViewController {
    UIWebView *webView;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"印湾自由行";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self drawWebView];
    [self accessWebPage];
	UIBarButtonItem *couponButton = [[UIBarButtonItem alloc]
                                   initWithTitle:@"优惠券"
                                   style:UIBarButtonItemStyleBordered
                                   target:self
                                   action:@selector(couponButtonClick)];
    self.navigationItem.rightBarButtonItem = couponButton;
    
    [self drawVersionInfo];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)drawWebView
{
    webView = [[UIWebView alloc]initWithFrame:CGRectMake(0, -45, 320, 540)];
    [self.view addSubview:webView];
}

- (void)accessWebPage
{
    //NSString *urlString = @"http://inwan.me:8080/web/html/ApplyState.html";
    //NSString *urlString = @"http://www.aoxsdesign.com";
    //NSString *urlString = @"http://inwan.me:8080/web/html/appapplystate.html";
    //NSURL *url = [NSURL URLWithString:urlString];
    //NSLog(@"%@", urlString);
    NSString* path = [[NSBundle mainBundle] pathForResource:@"appapplystate" ofType:@"html"];
    NSURL* url = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
}

- (void)couponButtonClick
{
    self.navigationController.navigationBar.hidden = YES;
    CouponViewController *couponVC = [[CouponViewController alloc]initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:couponVC animated:YES];
}


- (void)drawVersionInfo
{
    UILabel *versionLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 460, 320, 15)];
    versionLabel.text = [NSString stringWithFormat:@"v%@",
                         [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]];
    versionLabel.font = [UIFont systemFontOfSize:8];
    versionLabel.textColor = [UIColor grayColor];
    versionLabel.backgroundColor = [UIColor clearColor];
    versionLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:versionLabel];
    
}


@end
