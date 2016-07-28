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
 static inline long long ZXHHardDriveTotalSize();
/**
 *  获取可用容量
 *
 *  @return 单位为G
 */
 static inline long long ZXHHardDriveFreeSize();
/**
 *  获取时间(年)
 *
 *  @param years <#years description#>
 *
 *  @return <#return value description#>
 */
 static inline NSDate * getYearsDate(int years);
/**
 *  将字典转换为字符串
 *
 *  @param dict <#dict description#>
 *
 *  @return <#return value description#>
 */
 static inline NSString *stringFromDictionary(NSDictionary *dict);
/**
 *  返回两种样式的字符串
 *
 *  @param string1     <#string1 description#>
 *  @param color1      <#color1 description#>
 *  @param string2     <#string2 description#>
 *  @param color2      <#color2 description#>
 *  @param spaceLenght <#spaceLenght description#>
 *
 *  @return <#return value description#>
 */
 static inline NSAttributedString *multiStylesStirng(NSString *string1,UIColor *color1,NSString *string2,UIColor *color2,NSInteger spaceLenght);
#pragma mark --数据类型的转换
/**
 *  NSString转换为char*
 *
 *  @param str <#str description#>
 *
 *  @return <#return value description#>
 */
static inline const char * stringToChar(NSString *str);
/**
 *  char转换为NSStirng
 *
 *  @param a <#a description#>
 *
 *  @return <#return value description#>
 */
static inline NSString *charToString(char *a);
/**
 *  <#Description#>
 *
 *  @param a <#a description#>
 *
 *  @return <#return value description#>
 */
static inline NSData *charToData(char *a);
/**
 *  <#Description#>
 *
 *  @param data <#data description#>
 *
 *  @return <#return value description#>
 */
static inline const char *dataToChar(NSData *data);


//@interface ZXHValueObject : NSObject
//+(instancetype)sharedValueObject;
//@end
