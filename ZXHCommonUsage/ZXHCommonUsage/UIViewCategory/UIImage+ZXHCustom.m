//
//  UIImage+ZXHCustom.m
//  JGWImageDemo
//
//  Created by zhengxh on 16/9/7.
//  Copyright © 2016年 zhengxh. All rights reserved.
//

#import "UIImage+ZXHCustom.h"
#import <QuartzCore/QuartzCore.h>
@implementation UIImage (ZXHCustom)
//根据倍数放大
-(UIImage *)scaleCustomImage:(float)scaleSize
{
    CGSize size=self.size;
    UIGraphicsBeginImageContext(size);
    [self drawInRect:CGRectMake(0, 0, size.width*scaleSize, size.height*scaleSize)];
    UIImage *imageScale=UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return imageScale;
}
//根据指定尺寸进行剪裁
-(UIImage *)resizeCustomImage:(CGSize)reSize
{
    CGSize size=self.size;
    UIGraphicsBeginImageContext(size);
    [self drawInRect:CGRectMake(0, 0, reSize.width, reSize.height)];
    UIImage *imageResize=UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return imageResize;
}
//处理指定的View
+(UIImage *)captureView:(UIView *)theView
{
    CGRect rectView=theView.frame;
    UIGraphicsBeginImageContext(rectView.size);
    CGContextRef context=UIGraphicsGetCurrentContext();
    [theView.layer renderInContext:context];
    UIImage *imgV=UIGraphicsGetImageFromCurrentImageContext();
    return imgV;
}
//存储到document
-(void)storeImgToHomeDocument
{
    NSString *path=[[NSHomeDirectory()stringByAppendingPathComponent:@"Documents"]stringByAppendingPathComponent:@"image.png"];
    [UIImagePNGRepresentation(self)writeToFile:path atomically:YES];
}
//截屏到相册
-(void)storeToPhotoAlbum
{
    
}
@end
