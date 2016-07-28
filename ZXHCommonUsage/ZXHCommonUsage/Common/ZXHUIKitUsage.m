//
//  ZXHUIKitUsage.m
//  ZXHCommonUsage
//
//  Created by chenpeng on 16/6/28.
//  Copyright © 2016年 zhengxh. All rights reserved.
//

#import "ZXHUIKitUsage.h"

@implementation ZXHUIKitUsage
+(ZXHUIKitUsage *)sharedUIKitUsage
{
    dispatch_once_t once;
    static ZXHUIKitUsage *kitObject;
    dispatch_once(&once,^()
    {
        kitObject=[[ZXHUIKitUsage alloc] init];
    });
    return kitObject;
}
-(UIImage *)createImageWithColor:(UIColor *)myColor
{
    CGRect rect=CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context=UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [myColor CGColor]);
    CGContextFillRect(context, rect);
    UIImage *image=UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}
-(UIImage *)getFullScreenFromDevice
{
    CGSize imageSize=[[UIScreen mainScreen]bounds].size;
    UIGraphicsBeginImageContextWithOptions(imageSize, NO, 0);
    CGContextRef context=UIGraphicsGetCurrentContext();
    
    for (UIWindow *window in [[UIApplication sharedApplication] windows])
    {
        if ([window respondsToSelector:@selector(screen)]||[window screen]==[UIScreen mainScreen])
        {
            CGContextSaveGState(context);
            CGContextTranslateCTM(context, [window center].x, [window center].y);
            CGContextConcatCTM(context, [window transform]);
            CGContextTranslateCTM(context, -[window bounds].size.width*[[window layer] anchorPoint].x, -[window bounds].size.height*[[window layer] anchorPoint].y);
            [[window layer] renderInContext:context];
            CGContextRestoreGState(context);
        }
    }
    UIImage *image=UIGraphicsGetImageFromCurrentImageContext();
    return image;
}
@end
