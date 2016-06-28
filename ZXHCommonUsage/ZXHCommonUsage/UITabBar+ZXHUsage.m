//
//  UITabBar+ZXHUsage.m
//  ZXHCommonUsage
//
//  Created by chenpeng on 16/6/28.
//  Copyright © 2016年 zhengxh. All rights reserved.
//

#import "UITabBar+ZXHUsage.h"

@implementation UITabBar (ZXHUsage)
-(void)removeShadowImage
{
    [[UITabBar  appearance] setShadowImage:[[UIImage alloc]init]];
    [[UITabBar appearance] setBackgroundImage:[[UIImage alloc] init]];
}
@end
