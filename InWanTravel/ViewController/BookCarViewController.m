//
//  BookCarViewController.m
//  InWanTravel
//
//  Created by Gavin on 14-5-26.
//  Copyright (c) 2014年 InWanTech. All rights reserved.
//

#import "BookCarViewController.h"
#import "TakePhotoViewController.h"


@interface BookCarViewController ()

@end

@implementation BookCarViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.view.backgroundColor = [UIColor lightGrayColor];
        
        UILabel *description = [[UILabel alloc]initWithFrame:CGRectMake(20, 30, 280, 400)];
        description.textAlignment = NSTextAlignmentCenter;
        description.text = @"预约免费接机步骤：\n\n1.发送微博 @印湾旅行 \n\n2.私信 @印湾旅行 您的航班号 \n\n3. 拍照上传您的通行证（号码清晰可辨认）";
        description.lineBreakMode = NSLineBreakByWordWrapping;
        description.numberOfLines = 0;
        [self.view addSubview:description];
        
        UIButton *bookButton = [UIButton buttonWithType:UIButtonTypeCustom];
        bookButton.frame = CGRectMake(20, 400, 265, 40);
        [bookButton setBackgroundImage:[UIImage imageNamed:@"login"] forState:UIControlStateNormal];
        [bookButton addTarget:self action:@selector(bookCilcked:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:bookButton];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}



- (void)bookCilcked:(id)sender
{
    NSLog(@"bookCilcked");
    [self takePhoto];
}

- (void)takePhoto
{
    TakePhotoViewController *photoVC = [[TakePhotoViewController alloc]initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:photoVC animated:NO];
}

- (void)bookCar
{
    WBSendMessageToWeiboRequest *request = [WBSendMessageToWeiboRequest requestWithMessage:[self messageToShare]];
    request.userInfo = @{@"ShareMessageFrom": @"SendMessageToWeiboViewController",
                         @"Other_Info_1": [NSNumber numberWithInt:123],
                         @"Other_Info_2": @[@"obj1", @"obj2"],
                         @"Other_Info_3": @{@"key1": @"obj1", @"key2": @"obj2"}};
    //request.shouldOpenWeiboAppInstallPageIfNotInstalled = YES;
    
    [WeiboSDK sendRequest:request];
}


- (WBMessageObject *)messageToShare
{
    WBMessageObject *message = [WBMessageObject message];
    
    message.text = @"申请预约@印湾旅行1台北免费接机";
    
    WBImageObject *image = [WBImageObject object];
    image.imageData = [NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"airportCar" ofType:@"png"]];
    message.imageObject = image;
    
    /*
    if (self.mediaSwitch.on)
    {
        WBWebpageObject *webpage = [WBWebpageObject object];
        webpage.objectID = @"identifier1";
        webpage.title = @"分享网页标题";
        webpage.description = [NSString stringWithFormat:@"分享网页内容简介-%.0f", [[NSDate date] timeIntervalSince1970]];
        webpage.thumbnailData = [NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"image_2" ofType:@"jpg"]];
        webpage.webpageUrl = @"http://sina.cn?a=1";
        message.mediaObject = webpage;
    }*/
    
    return message;
}

#pragma WBHttpRequestDelegate

- (void)request:(WBHttpRequest *)request didFinishLoadingWithResult:(NSString *)result
{
    NSString *title = nil;
    UIAlertView *alert = nil;
    
    title = @"收到网络回调";
    alert = [[UIAlertView alloc] initWithTitle:title
                                       message:[NSString stringWithFormat:@"%@",result]
                                      delegate:nil
                             cancelButtonTitle:@"确定"
                             otherButtonTitles:nil];
    [alert show];
}

- (void)request:(WBHttpRequest *)request didFailWithError:(NSError *)error;
{
    NSString *title = nil;
    UIAlertView *alert = nil;
    
    title = @"请求异常";
    alert = [[UIAlertView alloc] initWithTitle:title
                                       message:[NSString stringWithFormat:@"%@",error]
                                      delegate:nil
                             cancelButtonTitle:@"确定"
                             otherButtonTitles:nil];
    [alert show];
}


@end
