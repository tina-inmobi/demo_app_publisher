//
//  UIColor+RSKit.h
//  YJCodeWarehouse
//
//  Created by ╰莪呮想好好宠Nǐつ on 2018/9/18.
//  Copyright © 2018年 RS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (RSKit)
#define kColorWhite  [UIColor white]
#define kColorBlack  [UIColor black]
#define kColorRGBA(r,g,b,a)    [UIColor colorWithRed:r/255.f green:g/255.f blue:b/255.f alpha:a]
#define kColorRGB(r,g,b)       kColorRGBA(r,g,b,1.0)
#define kColorRA(r,a)          kColorRGBA(r,r,r,a)
#define kColorR(r)             kColorRGBA(r,r,r,1.0)

#define kColorHexA(hexValue,a) [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0 green:((float)((hexValue & 0xFF00) >> 8))/255.0 blue:((float)(hexValue & 0xFF))/255.0 alpha:a]
#define kColorHex(hexValue)    kColorHexA(hexValue,1.0)

/** rgb */
+ (UIColor *(^)(CGFloat r, CGFloat g , CGFloat b))RGB;
/** rgba */
+ (UIColor *(^)(CGFloat r, CGFloat g, CGFloat b, CGFloat a))RGBA;
/** 随机色 */
+(UIColor *)random;
/** 16进制设置颜色,eg:ffffff,#ffffff,0xffffff */
+ (UIColor *(^)(NSString * cStr,CGFloat a))hexAlphaString;
+ (UIColor *(^)(NSString * cStr))hexString;
+ (UIColor *(^)(uint32_t rgbValue))hexRGBValue;
+ (UIColor *(^)(uint32_t rgbValue,CGFloat alpha))hexRGBAValue;


#pragma mark --- iOS系统提供的颜色
/** 黑色 */
+(UIColor *)black;
/** 深灰 */
+(UIColor *)darkGray;
/** 浅灰 */
+(UIColor *)lightGray;
/** 灰色 */
+(UIColor *)gray;
/** 白色 */
+(UIColor *)white;
/** 红色 */
+(UIColor *)red;
/** 绿色 */
+(UIColor *)green;
/** 蓝色 */
+(UIColor *)blue;
/** 蓝绿 */
+(UIColor *)cyan;
/** 黄色 */
+(UIColor *)yellow;
/** 品红 */
+(UIColor *)magenta;
/** 橙色 */
+(UIColor *)orange;
/** 紫色 */
+(UIColor *)purple;
/** 棕色 */
+(UIColor *)brown;
/** 无色 */
+(UIColor *)clear;
@end
