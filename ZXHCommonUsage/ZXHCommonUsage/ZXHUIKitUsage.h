//
//  ZXHUIKitUsage.h
//  ZXHCommonUsage
//
//  Created by chenpeng on 16/6/28.
//  Copyright © 2016年 zhengxh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface ZXHUIKitUsage : NSObject
+(ZXHUIKitUsage *)sharedUIKitUsage;
/**
 *  将color转换为uiimage
 *
 *  @param myColor <#myColor description#>
 *
 *  @return <#return value description#>
 */
-(UIImage *)createImageWithColor:(UIColor *)myColor;
-(UIImage *)getFullScreenFromDevice;
@end
