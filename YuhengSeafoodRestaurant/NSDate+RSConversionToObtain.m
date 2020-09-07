//
//  NSDate+RSConversionToObtain.m
//  iOS_RSCodeWarehouse
//
//  Created by OKC on 2018/11/9.
//  Copyright © 2018年 OKC. All rights reserved.
//

#import "NSDate+RSConversionToObtain.h"
#define D_MINUTE    60
#define D_HOUR      60 * 60
#define D_DAY       60 * 60 * 24
#define D_WEEK      60 * 60 * 24 * 7
#define D_YEAR      60 * 60 * 24 * 365
@implementation NSDate (RSConversionToObtain)

#pragma make -------- 时间获取 --------
/**
  获取当前时间戳
  *1000 是精确到毫秒，不乘就是精确到秒
  @return 返回时间戳
  */
+ (NSString *)currentTimeString {
    //获取当前时间0秒后的时间
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:0];
    // *1000 是精确到毫秒，不乘就是精确到秒
    NSTimeInterval time = [date timeIntervalSince1970] * 1000;
    NSString *timeString = [NSString stringWithFormat:@"%.0f", time];
    return timeString;
}

/**
  获取当前是星期几
  @return 1、2、3、4、5、6、7(星期六是 7 ，星期日 1)
  */
+ (NSInteger)getNowWeekday {
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents *comps = [[NSDateComponents alloc] init];
    NSInteger unitFlags = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitWeekday | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    NSDate *now = [NSDate date];
    // 在真机上需要设置区域，才能正确获取本地日期，中国区代码：zh_CN
    calendar.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"zh_CN"];
    comps = [calendar components:unitFlags fromDate:now];
    return [comps weekday];
}
+ (NSInteger)getWeekday:(NSString *)dateString {
    NSString * dateStr =  [dateString stringByReplacingOccurrencesOfString:@"-"withString:@":"];
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents *comps = [[NSDateComponents alloc] init];
    NSInteger unitFlags = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitWeekday | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    NSDateFormatter *formatter = [NSDateFormatter new];
    formatter.dateFormat = @"yyyy:MM:dd";
    NSDate *now = [formatter dateFromString:dateStr];
    // 在真机上需要设置区域，才能正确获取本地日期，中国区代码：zh_CN
    calendar.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"zh_CN"];
    comps = [calendar components:unitFlags fromDate:now];
    return [comps weekday];
}
/**
  计算两个时间的差值
  param starTime 开始时间
  param endTime 结束时间
  @return 时间差 (单位 ：秒)
  */
+ (NSTimeInterval (^)(NSString *starTime,NSString *endTime))calculatedTimeDifference {
    return ^NSTimeInterval (NSString *starTime,NSString *endTime) {
        NSDateFormatter* formater = [[NSDateFormatter alloc] init];
        [formater setDateFormat:@"yyyy-MM-dd"];
        NSDate* startDate = [formater dateFromString:starTime];
        NSDate* endDate = [formater dateFromString:endTime];
        NSTimeInterval time = [endDate timeIntervalSinceDate:startDate];
        return time;
    };
}

#pragma mark -----  从当前日期相对日期时间 -----
/** 明天 */
+ (NSString *)dateTomorrow {
    //获取当前时间0秒后的时间
    NSDate* date = [NSDate dateWithTimeIntervalSinceNow:0];
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents *components = [gregorian components:NSCalendarUnitWeekday | NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay fromDate:date];
    [components setDay:([components day]+1)];
    NSDate *beginningOfWeek = [gregorian dateFromComponents:components];
    NSDateFormatter *dateday = [[NSDateFormatter alloc] init];
    [dateday setDateFormat:@"yyyy-MM-dd"];
    return [dateday stringFromDate:beginningOfWeek];
}

/** 昨天 */
+ (NSString *)dateYesterday {
    NSDate* date = [NSDate dateWithTimeIntervalSinceNow:0];
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents *components = [gregorian components:NSCalendarUnitWeekday | NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay fromDate:date];
    [components setDay:([components day]+1)];
    NSDate *beginningOfWeek = [gregorian dateFromComponents:components];
    NSDateFormatter *dateday = [[NSDateFormatter alloc] init];
    [dateday setDateFormat:@"yyyy-MM-dd"];
    return [dateday stringFromDate:beginningOfWeek];
}

/** 今天后几天 */
+ (NSDate *(^)(NSInteger))dateWithDaysFromNow {
    return ^NSDate *(NSInteger dateI) {
        return [[NSDate date] dateByAddingDays:dateI];
    };
}
+ (NSDate *(^)(NSString *,NSInteger))dateWithDays {
    return ^NSDate *(NSString *dateS,NSInteger dateI) {
        
        NSDateFormatter * formatter = [[NSDateFormatter alloc]init];
        NSTimeZone *timeZone = [NSTimeZone timeZoneWithName:@"UTC"];
        [formatter setTimeZone:timeZone];
        [formatter setDateFormat:@"yyyy-MM-dd"];
        if (dateI < 0) {
             return [[formatter dateFromString:dateS] dateBySubtractingDays:-dateI];
        }
        
        return [[formatter dateFromString:dateS] dateByAddingDays:dateI];
    };
}
/** 今天前几天 */
+ (NSDate *(^)(NSInteger))dateWithDaysBeforeNow {
    return ^NSDate * (NSInteger dateI) {
        return [[NSDate date] dateBySubtractingDays:dateI];
    };
}

/** 当前小时前dHours个小时 */
+ (NSDate *(^)(NSInteger))dateWithHoursFromNow {
    return ^NSDate * (NSInteger dateI) {
        NSTimeInterval aTimeInterval = [[NSDate date] timeIntervalSinceReferenceDate] + D_HOUR * dateI;
        NSDate *newDate = [NSDate dateWithTimeIntervalSinceReferenceDate:aTimeInterval];
        return newDate;
    };
}

/** 当前小时后dHours个小时 */
+ (NSDate *(^)(NSInteger))dateWithHoursBeforeNow {
    return ^NSDate * (NSInteger dateI) {
        NSTimeInterval aTimeInterval = [[NSDate date] timeIntervalSinceReferenceDate] - D_HOUR * dateI;
        NSDate *newDate = [NSDate dateWithTimeIntervalSinceReferenceDate:aTimeInterval];
        return newDate;
    };
}

/** 当前分钟前dMinutes个分钟 */
+ (NSDate *(^)(NSInteger))dateWithMinutesFromNow {
    return ^NSDate * (NSInteger dateI) {
        NSTimeInterval aTimeInterval = [[NSDate date] timeIntervalSinceReferenceDate] + D_MINUTE * dateI;
        NSDate *newDate = [NSDate dateWithTimeIntervalSinceReferenceDate:aTimeInterval];
        return newDate;
    };
}

/** 当前分钟后dMinutes个分钟 */
+ (NSDate *(^)(NSInteger))dateWithMinutesBeforeNow {
    return ^NSDate * (NSInteger dateI) {
        NSTimeInterval aTimeInterval = [[NSDate date] timeIntervalSinceReferenceDate] - D_MINUTE * dateI;
        NSDate *newDate = [NSDate dateWithTimeIntervalSinceReferenceDate:aTimeInterval];
        return newDate;
    };
}

#pragma make -------- 格式转换 --------
/** 给定format格式化时间 eg:yyyy-MM-dd HH:mm:ss */
- (NSString *(^)(NSString * format))stringDateFormat {
    return ^NSString * (NSString * format) {
        NSDateFormatter *formatter = [NSDateFormatter new];
        formatter.dateFormat = format;
        return [formatter stringFromDate:self];
    };
}

#pragma make -------- 时间转换 --------



#pragma make -------- 时间计算 --------
/** 判断时间戳是否为当天,昨天,一周内,年月日 */
+ (NSString *(^)(NSString *))timeStringWithTiemInterval {
    return ^NSString * (NSString *title) {
        return [NSDate timeStringWithTimeInterval:title];
    };
}


//格式化
- (NSDate *)dateWithYMD {
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    fmt.dateFormat = @"yyyy-MM-dd";
    NSString *selfStr = [fmt stringFromDate:self];
    return [fmt dateFromString:selfStr];
}

/** 判断时间戳是否为当天,昨天,一周内,年月日 */
+ (NSString *)timeStringWithTimeInterval:(NSString *)timeInterval {
    NSDateFormatter* dateFormat = [[NSDateFormatter alloc] init];
    
    [dateFormat setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    
    NSDate *date =[dateFormat dateFromString:timeInterval];
    //    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:time]; //此处根据项目需求,选择是否除以1000 , 如果时间戳精确到秒则去掉1000
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    
    //今天
    if ([date isToday]) {
        
        formatter.dateFormat = @"HH:mm";
        
        return [formatter stringFromDate:date];
    }else{
        
        //昨天
        if ([date isYesterday]) {
            
            formatter.dateFormat = @"yy-MM-dd HH:mm";
            return [formatter stringFromDate:date];
            
            //一周内 [date weekdayStringFromDate]
        }else if ([date isSameWeek]){
            
            formatter.dateFormat = [NSString stringWithFormat:@"%@",@"yy-MM-dd HH:mm"];
            return [formatter stringFromDate:date];
            
            //直接显示年月日
        }else{
            
            formatter.dateFormat = @"yy-MM-dd HH:mm";
            return [formatter stringFromDate:date];
        }
    }
    return nil;
}

//是否为今天
- (BOOL)isToday {
    //now: 2015-09-05 11:23:00
    //self 调用这个方法的对象本身
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    int unit = NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear ;
    
    //1.获得当前时间的 年月日
    NSDateComponents *nowCmps = [calendar components:unit fromDate:[NSDate date]];
    
    //2.获得self
    NSDateComponents *selfCmps = [calendar components:unit fromDate:self];
    
    return (selfCmps.year == nowCmps.year) && (selfCmps.month == nowCmps.month) && (selfCmps.day == nowCmps.day);
}

//是否为昨天
- (BOOL)isYesterday {
    //2014-05-01
    NSDate *nowDate = [[NSDate date] dateWithYMD];
    
    //2014-04-30
    NSDate *selfDate = [self dateWithYMD];
    
    //获得nowDate和selfDate的差距
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *cmps = [calendar components:NSCalendarUnitDay fromDate:selfDate toDate:nowDate options:0];
    
    return cmps.day == 1;
}

//是否在同一周
- (BOOL)isSameWeek {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    int unit = NSCalendarUnitWeekday | NSCalendarUnitMonth | NSCalendarUnitYear ;
    
    //1.获得当前时间的 年月日
    NSDateComponents *nowCmps = [calendar components:unit fromDate:[NSDate date]];
    
    //2.获得self
    NSDateComponents *selfCmps = [calendar components:unit fromDate:self];
    
    return (selfCmps.year == nowCmps.year) && (selfCmps.month == nowCmps.month) && (selfCmps.day == nowCmps.day);
}

/** 减少dDays天 */
- (NSDate *) dateBySubtractingDays:(NSInteger)dDays {
    return [self dateByAddingDays:(dDays * -1)];
}

/** 增加dDays天 */
- (NSDate *)dateByAddingDays:(NSUInteger)days {
    NSDateComponents *c = [[NSDateComponents alloc] init];
    c.day = days;
    NSCalendar *calender = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierChinese];
    NSDate *date = [calender dateByAddingComponents:c toDate:self options:0];
    return date;
}

/** 增加dHours小时 */
- (NSDate *) dateByAddingHours:(NSInteger)dHours {
    NSTimeInterval aTimeInterval = [self timeIntervalSinceReferenceDate] + D_HOUR * dHours;
    NSDate *newDate = [NSDate dateWithTimeIntervalSinceReferenceDate:aTimeInterval];
    return newDate;
}

/** 当前小时前dHours个小时 */
+ (NSDate *)dateWithHoursFromNow:(NSInteger)dHours {
    NSTimeInterval aTimeInterval = [[NSDate date] timeIntervalSinceReferenceDate] + D_HOUR * dHours;
    NSDate *newDate = [NSDate dateWithTimeIntervalSinceReferenceDate:aTimeInterval];
    return newDate;
}
///时间戳转时间
+ (NSString *)timeStampTurnTime:(NSString *)timeStamp format:(NSString *)format
{
    NSString *timeSBegin = timeStamp;
    // iOS 生成的时间戳是10位
    NSTimeInterval interval = timeSBegin.doubleValue;
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:interval];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:format];
    NSString *dateString  = [formatter stringFromDate: date];
    return dateString;
}
//获取当前的时间
+(NSString*)getCurrentTimes:(NSString *)format{
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:format];
    //现在时间,你可以输出来看下是什么格式
    NSDate *datenow = [NSDate date];
    //----------将nsdate按formatter格式转成nsstring
    NSString *currentTimeString = [formatter stringFromDate:datenow];
    NSLog(@"currentTimeString =  %@",currentTimeString);
    return currentTimeString;
}
@end
