//
//  CouponViewController.m
//  InWanTravel
//
//  Created by Gavin on 14-5-12.
//  Copyright (c) 2014年 InWanTech. All rights reserved.
//

#import "CouponViewController.h"

@interface CouponViewController ()

@end

@implementation CouponViewController {
    UIScrollView *scrollView;
    UIPageControl * pagecontrol;
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.view.backgroundColor = [UIColor whiteColor];
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 20, 320, 460)];
    scrollView.bounces = NO;
    scrollView.pagingEnabled = YES;
    scrollView.userInteractionEnabled = YES;
    scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.showsVerticalScrollIndicator = NO;
    //scrollView.indicatorStyle=UIScrollViewIndicatorStyleBlack;//滚动指示器的风格
    scrollView.contentSize=CGSizeMake(scrollView.frame.size.width*3, scrollView.frame.size.height); //滚动的区域，三个页面的宽度
    scrollView.contentOffset = CGPointMake(0, 20);
    scrollView.scrollsToTop=NO;
    scrollView.directionalLockEnabled=YES;//只能一个方向滚动
    scrollView.delegate = self;
    //scrollView.backgroundColor = [UIColor redColor];
    [self.view addSubview:scrollView];

    //[scrollView scrollRectToVisible:self.view.frame animated:NO];
    
    pagecontrol=[[UIPageControl alloc] initWithFrame:CGRectMake(108, 440, 100, 50)];
    pagecontrol.backgroundColor=[UIColor clearColor];
    pagecontrol.hidesForSinglePage=YES;
    pagecontrol.userInteractionEnabled=NO;
    pagecontrol.numberOfPages=3; //页面数为3
    pagecontrol.currentPage=0;   //当前默认为第一页
    [self.view addSubview:pagecontrol];
    
    
    UIImageView *iv1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"LKM1307"]];
    iv1.frame = CGRectMake(0, 0, 320, 460);
    UIImageView *iv2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"LKM1308"]];
    iv2.frame = CGRectMake(320, 0, 320, 460);
    UIImageView *iv3 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"LKM1310"]];
    iv3.frame = CGRectMake(320*2, 0, 320, 460);
    
    [scrollView addSubview:iv1];
    [scrollView addSubview:iv2];
    [scrollView addSubview:iv3];
}

//手指离开屏幕后ScrollView还会继续滚动一段时间只到停止
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    int index =fabs(scrollView.contentOffset.x)/scrollView.frame.size.width;
    pagecontrol.currentPage=index;
    
}



- (void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBar.hidden = YES;
}

- (void)viewWillDisappear:(BOOL)animated
{
    self.navigationController.navigationBar.hidden = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
