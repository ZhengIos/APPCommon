//
//  ViewController.m
//  ZXHCommonUsage
//
//  Created by chenpeng on 16/6/28.
//  Copyright © 2016年 zhengxh. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+ZXHCustom.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImageView *imgVOrigin=[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
    imgVOrigin.image=[UIImage imageNamed:@"aa1"];
    [self.view addSubview:imgVOrigin];
    
    UIImageView *img1=[[UIImageView alloc] initWithFrame:CGRectMake(0,55, 100, 50)];
    img1.image=[imgVOrigin.image scaleCustomImage:0.5];
    [self.view addSubview:img1];
    
    UIImageView *img2=[[UIImageView alloc] init];
    img2.image=[imgVOrigin.image resizeCustomImage:CGSizeMake(25, 25)];
    img2.frame=CGRectMake(0, 200, img2.image.size.width, img2.image.size.height);
    [self.view addSubview:img2];
    
    UIImageView *img3=[[UIImageView alloc] initWithFrame:CGRectMake(0,300, 100, 100)];
    img3.image=[UIImage captureView:self.view];
    [self.view addSubview:img3];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
