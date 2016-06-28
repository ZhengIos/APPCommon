//
//  ZXHValueObject.m
//  ZXHCommonUsage
//
//  Created by chenpeng on 16/6/28.
//  Copyright © 2016年 zhengxh. All rights reserved.
//

#import "ZXHValueObject.h"
static inline CGFloat distanceBetweenPoints(CGPoint point1,CGPoint point2)
{
    CGFloat dx=point2.x-point1.x;
    CGFloat dy=point2.y-point1.y;
    return sqrt(dx*dx+dy*dy);
}
long long ZXHHardDriveTotalSize()
{
    NSFileManager *fm=[NSFileManager defaultManager];
    NSDictionary *fattributes=[fm attributesOfFileSystemForPath:NSHomeDirectory() error:nil];
    long long total=[[fattributes objectForKey:NSFileSystemSize]longLongValue]/1000000000;
    return total;
}
long long ZXHHardDriveFreeSize()
{
    NSFileManager *fm=[NSFileManager defaultManager];
    NSDictionary *fattributes=[fm attributesOfFileSystemForPath:NSHomeDirectory() error:nil];
    long long free=[[fattributes objectForKey:NSFileSystemFreeSize]longLongValue]/1000000000;
    return free;
}
NSDate * getYearsDate(int years)
{
    NSCalendar *gregorian=[[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents *dateComponents=[[NSDateComponents alloc] init];
    [dateComponents setYear:years];
    return  [gregorian dateByAddingComponents:dateComponents toDate:[NSDate date] options:0];
}
NSString *stringFromDictionary(NSDictionary *dict)
{
    NSData *data=[NSJSONSerialization dataWithJSONObject:dict options:0 error:nil];
    NSString *str=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    return str;
}
NSAttributedString *multiStylesStirng(NSString *string1,UIColor *color1,NSString *string2,UIColor *color2,NSInteger spaceLenght)
{
    NSInteger length1=string1.length;
    NSInteger length2=string2.length;
    NSMutableString *string=[[NSMutableString alloc] initWithString:string1];
    [string stringByAppendingString:string2];
    
    NSDictionary *attriDic1=[[NSDictionary alloc] initWithObjectsAndKeys:color1,NSForegroundColorAttributeName, nil];
    NSDictionary *attriDic2=[[NSDictionary alloc] initWithObjectsAndKeys:color2,NSForegroundColorAttributeName, nil];
    NSMutableAttributedString *attributedString=[[NSMutableAttributedString alloc] initWithString:string];
    [attributedString setAttributes:attriDic1 range:NSMakeRange(0, length1)];
    [attributedString setAttributes:attriDic2 range:NSMakeRange(length1+spaceLenght, length2)];
    return attributedString;
}
//@implementation ZXHValueObject
//+(instancetype)sharedValueObject
//{
//    dispatch_once_t once;
//    static ZXHValueObject *valueObject;
//    dispatch_once(&once,^()
//    {
//        valueObject=[[ZXHValueObject alloc] init];
//    });
//    return valueObject;
//}
//@end