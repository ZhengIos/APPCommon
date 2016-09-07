//
//  UIImage+ZXHCustom.h
//  JGWImageDemo
//
//  Created by zhengxh on 16/9/7.
//  Copyright © 2016年 zhengxh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ZXHCustom)
-(UIImage *)scaleCustomImage:(float)scaleSize;
-(UIImage *)resizeCustomImage:(CGSize)reSize;
+(UIImage *)captureView:(UIView *)theView;
@end
