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

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    NSLog(@"didFinishPickingMediaWithInfo");
    /*
     
     [UIApplication sharedApplication].statusBarHidden = NO;
     
     NSString *mediaType = [info objectForKey:UIImagePickerControllerMediaType];
     
     NSData *data;
     [picker dismissViewControllerAnimated:YES completion:nil];
     if ([mediaType isEqualToString:@"public.image"]){
     
     //切忌不可直接使用originImage，因为这是没有经过格式化的图片数据，可能会导致选择的图片颠倒或是失真等现象的发生，从UIImagePickerControllerOriginalImage中的Origin可以看出，很原始，哈哈
     UIImage *originImage = [info objectForKey:UIImagePickerControllerOriginalImage];
     
     //图片压缩，因为原图都是很大的，不必要传原图
     UIImage *scaleImage = [InWanWanImageUtils scaleImage:originImage toScale:0.5];
     
     //以下这两步都是比较耗时的操作，最好开一个HUD提示用户，这样体验会好些，不至于阻塞界面
     if (UIImagePNGRepresentation(scaleImage) == nil) {
     //将图片转换为JPG格式的二进制数据
     data = UIImageJPEGRepresentation(scaleImage, 1);
     } else {
     //将图片转换为PNG格式的二进制数据
     data = UIImagePNGRepresentation(scaleImage);
     }
     
     //将二进制数据生成UIImage
     UIImage *image = [UIImage imageWithData:data];
     NSString *fileName = [NSString stringWithFormat:@"%@%ld.jpg",[OpenUDID value],[InWanWanDateUtils getNowTimeStamp]];
     uploadImage = image;
     uploadName = fileName;
     [self updatePicInfo:image withFileName:fileName];
     }
     [picker dismissViewControllerAnimated:NO completion:nil];
     */
}

@end
