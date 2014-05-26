//
//  TakePhotoViewController.m
//  InWanTravel
//
//  Created by Gavin on 14-5-26.
//  Copyright (c) 2014年 InWanTech. All rights reserved.
//

#import "TakePhotoViewController.h"

@interface TakePhotoViewController ()

@end

@implementation TakePhotoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self showImagePickerForSourceType:UIImagePickerControllerSourceTypeCamera];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showImagePickerForSourceType:(UIImagePickerControllerSourceType)sourceType
{
    
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.modalPresentationStyle = UIModalPresentationCurrentContext;
    picker.sourceType = sourceType;
    picker.delegate = self;
    
    //[self presentViewController:picker animated:YES completion:nil];
    [self.navigationController pushViewController:picker animated:NO];
}

@end
