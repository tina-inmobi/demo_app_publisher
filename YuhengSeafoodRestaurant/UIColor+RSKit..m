//
//  UIColor+RSKit.m
//  YJCodeWarehouse
//
//  Created by ╰莪呮想好好宠Nǐつ on 2018/9/18.
//  Copyright © 2018年 RS. All rights reserved.
//

#import "UIColor+RSKit.h"

@implementation UIColor (RSKit)
+ (UIColor *(^)(CGFloat, CGFloat, CGFloat))RGB
{
    return ^UIColor * (CGFloat r,CGFloat g,CGFloat b) {
        return [UIColor r:r g:g b:b];
    };
}
+ (UIColor *(^)(CGFloat, CGFloat, CGFloat, CGFloat))RGBA
{
    return ^UIColor * (CGFloat r,CGFloat g,CGFloat b,CGFloat a) {
        return [UIColor r:r g:g b:b a:a];
    };
}
+ (UIColor *(^)(NSString *, CGFloat))hexAlphaString {
    return ^UIColor * (NSString * str,CGFloat a) {
        return [UIColor hexStr:str a:a];
    };
}
+ (UIColor *(^)(NSString *))hexString {
    return ^UIColor * (NSString * str) {
        return [UIColor hexStr:str a:1];
    };
}

+ (UIColor *(^)(uint32_t))hexRGBValue {
    return ^UIColor * (uint32_t rgbaValue) {
        return [UIColor colorWithRed:((rgbaValue & 0xFF000000) >> 24) / 255.0f
                               green:((rgbaValue & 0xFF0000) >> 16) / 255.0f
                                blue:((rgbaValue & 0xFF00) >> 8) / 255.0f
                               alpha:1];
    };
}
+ (UIColor *(^)(uint32_t, CGFloat))hexRGBAValue {
    return ^UIColor * (uint32_t rgbaValue,CGFloat a) {
        return [UIColor colorWithRed:((rgbaValue & 0xFF000000) >> 24) / 255.0f
                               green:((rgbaValue & 0xFF0000) >> 16) / 255.0f
                                blue:((rgbaValue & 0xFF00) >> 8) / 255.0f
                               alpha:a];
    };
}

+(UIColor *)r:(CGFloat)r g:(CGFloat)g b:(CGFloat)b a:(CGFloat)a
{
    return [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a];
}
+(UIColor *)r:(CGFloat)r g:(CGFloat)g b:(CGFloat)b
{
    return [UIColor r:r g:g b:b a:1.0];
}
+(UIColor *)r:(CGFloat)r a:(CGFloat)a
{
    return [UIColor r:r g:r b:r a:a];
}
+(UIColor *)r:(CGFloat)r
{
    return [UIColor r:r a:1.0];
}

+(UIColor *)hexStr:(NSString *)hexStr a:(CGFloat)a
{
    //删除字符串中的空格
    NSString *cString = [[hexStr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    // String should be 6 or 8 characters
    if ([cString length] < 6){
        return [UIColor clearColor];
    }
    // strip 0X if it appears
    //如果是0x开头的，那么截取字符串，字符串从索引为2的位置开始，一直到末尾
    if ([cString hasPrefix:@"0X"] || [cString hasPrefix:@"0x"]){
        cString = [cString substringFromIndex:2];
    }
    //如果是#开头的，那么截取字符串，字符串从索引为1的位置开始，一直到末尾
    if ([cString hasPrefix:@"#"]){
        cString = [cString substringFromIndex:1];
    }
    if ([cString length] != 6){
        return [UIColor clearColor];
    }
    // Separate into r, g, b substrings
    NSRange range;
    range.location = 0;
    range.length = 2;
    //r
    NSString *rString = [cString substringWithRange:range];
    //g
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    //b
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    
    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    return [UIColor colorWithRed:((float)r / 255.0f) green:((float)g / 255.0f) blue:((float)b / 255.0f) alpha:a];
}
+(UIColor *)hexStr:(NSString *)hexStr
{
    return [UIColor hexStr:hexStr a:1.0];
}
+(UIColor *)random
{
    NSInteger aRedValue = arc4random() % 255;
    NSInteger aGreenValue = arc4random() % 255;
    NSInteger aBlueValue = arc4random() % 255;
    return [UIColor r:aRedValue g:aGreenValue b:aBlueValue];
}


#pragma mark --- iOS系统提供的颜色
/** 黑色 */
+(UIColor *)black{
    return [UIColor blackColor];
}
/** 深灰色 */
+(UIColor *)darkGray{
    return [UIColor darkGrayColor];
}
/** 浅灰色 */
+(UIColor *)lightGray{
    return [UIColor lightGrayColor];
}
/** 灰色 */
+(UIColor *)gray{
    return [UIColor grayColor];
}
/** 白色 */
+(UIColor *)white{
    return [UIColor whiteColor];
}
/** 红色 */
+(UIColor *)red{
    return [UIColor redColor];
}
/** 绿色 */
+(UIColor *)green{
    return [UIColor greenColor];
}
/** 蓝色 */
+(UIColor *)blue{
    return [UIColor blueColor];
}
/** 蓝绿色 */
+(UIColor *)cyan{
    return [UIColor cyanColor];
}
/** 黄色 */
+(UIColor *)yellow{
    return [UIColor yellowColor];
}
/** 品红色 */
+(UIColor *)magenta{
    return [UIColor magentaColor];
}
/** 橙色 */
+(UIColor *)orange{
    return [UIColor orangeColor];
}
/** 紫色 */
+(UIColor *)purple{
    return [UIColor purpleColor];
}
/** 棕色 */
+(UIColor *)brown{
    return [UIColor brownColor];
}
/** 无色 */
+(UIColor *)clear{
    return [UIColor clearColor];
}
@end
