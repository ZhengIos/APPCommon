//
//  ZXHValueObject.h
//  ZXHCommonUsage
//
//  Created by chenpeng on 16/6/28.
//  Copyright © 2016年 zhengxh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
/**
 *  返回两点间的距离
 *
 *  @param point1 <#point1 description#>
 *  @param point2 <#point2 description#>
 *
 *  @return <#return value description#>
 */
 static inline CGFloat distanceBetweenPoints(CGPoint point1,CGPoint point2);
/**
 *  获取容量
 *
 *  @return 单位为G
 */
long long ZXHHardDriveTotalSize();
/**
 *  获取可用容量
 *
 *  @return 单位为G
 */
long long ZXHHardDriveFreeSize();
/**
 *  获取时间(年)
 *
 *  @param years <#years description#>
 *
 *  @return <#return value description#>
 */
NSDate * getYearsDate(int years);
NSString *stringFromDictionary(NSDictionary *dict);
//@interface ZXHValueObject : NSObject
//+(instancetype)sharedValueObject;
//@end
