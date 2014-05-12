//
//  WebBrowserViewController.m
//  InWanTravel
//
//  Created by Gavin on 14-4-11.
//  Copyright (c) 2014年 InWanTech. All rights reserved.
//

#import "WebBrowserViewController.h"

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
        [self drawWebView];
        [self accessWebPage];
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

- (void)drawWebView
{
    webView = [[UIWebView alloc]initWithFrame:CGRectMake(0, -45, 320, 540)];
    [self.view addSubview:webView];
}

- (void)accessWebPage
{
    //NSString *urlString = @"http://inwan.me:8080/web/html/ApplyState.html";
    //NSString *urlString = @"http://www.aoxsdesign.com";
    NSString *urlString = @"http://inwan.me:8080/web/html/appapplystate.html";
    NSURL *url = [NSURL URLWithString:urlString];
    NSLog(@"%@", urlString);
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
}

@end
