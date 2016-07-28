//
//  ZXHNetManager.m
//  Day27
//
//  Created by zhengxh on 16/7/27.
//  Copyright © 2016年 zhengxh. All rights reserved.
//

#import "ZXHNetManager.h"
#import <UIKit/UIKit.h>
@implementation ZXHNetManager
-(BOOL)isHTTPEnable
{
    if ([[[UIDevice currentDevice]systemVersion]compare:@"9.0" options:NSNumericSearch]!=NSOrderedAscending)
    {
        NSDictionary *infoDict=[[NSBundle mainBundle] infoDictionary];
        return [[[infoDict objectForKey:@"NSAppTransportSecurity"] objectForKey:@"NSAllowsArbitraryLoads"] boolValue];
    }
    return YES;
}
@end
