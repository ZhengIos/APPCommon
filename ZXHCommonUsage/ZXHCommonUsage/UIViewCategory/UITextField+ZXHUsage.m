//
//  UITextField+ZXHUsage.m
//  ZXHCommonUsage
//
//  Created by chenpeng on 16/6/28.
//  Copyright © 2016年 zhengxh. All rights reserved.
//

#import "UITextField+ZXHUsage.h"

@implementation UITextField (ZXHUsage)
-(void)setZXHPlaceHolderColor:(UIColor *)color andFont:(CGFloat)fontSize
{
    [self setValue:color forKey:@"_placeholderLabel.textColor"];
    [self setValue:[UIFont boldSystemFontOfSize:fontSize] forKey:@"_placeholderLabel.textColor"];
}
@end
