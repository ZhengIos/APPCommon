//
//  UIView+ZXHUsage.m
//  ZXHCommonUsage
//
//  Created by chenpeng on 16/6/28.
//  Copyright © 2016年 zhengxh. All rights reserved.
//

#import "UIView+ZXHUsage.h"

@implementation UIView (ZXHUsage)
-(void)setAlphaColor:(CGFloat)alpha
{
    [self.backgroundColor colorWithAlphaComponent:alpha];
}
@end
