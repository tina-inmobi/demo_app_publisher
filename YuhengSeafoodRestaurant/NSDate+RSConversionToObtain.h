//
//  NSDate+RSConversionToObtain.h
//  iOS_RSCodeWarehouse
//
//  Created by ╰莪呮想好好宠Nǐつ on 2018/11/9.
//  Copyright © 2018年 ╰莪呮想好好宠Nǐつ. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (RSConversionToObtain)
/** 给定format格式化时间 eg:yyyy-MM-dd HH:mm:ss */
@property (nonatomic, copy,readonly) NSString * (^stringDateFormat)(NSString *format);
#pragma mark -----  获取时间 -----
/**
  获取当前时间戳
  *1000 是精确到毫秒，不乘就是精确到秒
  @return 返回时间戳
  */
+ (NSString *)currentTimeString;
/**
  获取当前是星期几
  @return 1、2、3、4、5、6、7(星期六是 7 ，星期日 1)
  */
+ (NSInteger)getNowWeekday;
/**
  计算两个时间的差值
  param starTime 开始时间
  param endTime 结束时间
  @return 时间差 (单位 ：秒)
  */
+ (NSTimeInterval (^)(NSString *starTime,NSString *endTime))calculatedTimeDifference;

///时间戳转时间
+ (NSString *)timeStampTurnTime:(NSString *)timeStamp format:(NSString *)format;


/** 判断时间戳是否为当天,昨天,一周内,年月日 */
+ (NSString *(^)(NSString *))timeStringWithTiemInterval;

+ (NSInteger)getWeekday:(NSString *)dateString ;
///获取当前时间
+(NSString*)getCurrentTimes:(NSString *)format;

+ (NSDate *(^)(NSString *,NSInteger))dateWithDays;
#pragma make ---  Tue Nov 13 14:11:09 2018 返回date为此类型的转换成字符串即可  ---
/** 明天 */
+ (NSString *)dateTomorrow;
/** 昨天 */
+ (NSString *)dateYesterday;
/** 今天后几天 */
+ (NSDate *(^)(NSInteger))dateWithDaysFromNow;
/** 今天前几天 */
+ (NSDate *(^)(NSInteger))dateWithDaysBeforeNow;
/** 当前小时前dHours个小时 */
+ (NSDate *(^)(NSInteger))dateWithHoursFromNow;
/** 当前小时后dHours个小时 */
+ (NSDate *(^)(NSInteger))dateWithHoursBeforeNow;
/** 当前分钟前dMinutes个分钟 */
+ (NSDate *(^)(NSInteger))dateWithMinutesFromNow;
/** 当前分钟后dMinutes个分钟 */
+ (NSDate *(^)(NSInteger))dateWithMinutesBeforeNow;

@end

NS_ASSUME_NONNULL_END
