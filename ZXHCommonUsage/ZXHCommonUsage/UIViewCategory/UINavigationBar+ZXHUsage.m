//
//  UINavigationBar+ZXHUsage.m
//  ZXHCommonUsage
//
//  Created by chenpeng on 16/6/28.
//  Copyright © 2016年 zhengxh. All rights reserved.
//

#import "UINavigationBar+ZXHUsage.h"

@implementation UINavigationBar (ZXHUsage)
-(void)setNBTitleColor:(UIColor *)color
{
    NSDictionary *dic=[NSDictionary dictionaryWithObject:color forKey:NSForegroundColorAttributeName];
    [self setTitleTextAttributes:dic];
}
@end
