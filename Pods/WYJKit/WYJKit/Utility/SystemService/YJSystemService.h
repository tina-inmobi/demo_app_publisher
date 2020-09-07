/*******************************************************************************
 Copyright (K), 2019 - ~, ╰莪呮想好好宠Nǐつ 
 
 Author:        ╰莪呮想好好宠Nǐつ (Wang Yijing)
 E-mail:        1091676312@qq.com
 GitHub:        https://github.com/MemoryKing
 ********************************************************************************/

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface YJSystemService : NSObject

/**
 *  弹出提示，拨打电话，拨打完后回到原来的应用
 *
 *  @param phoneNum 电话号码
 */
+ (void)wPhoneCallWithPhoneNum:(NSString *)phoneNum;


/**
 *  跳到app的评论页
 *
 *  @param appId APP的id号
 */
+ (void)wJumpToAppReviewPageWithAppId:(NSString *)appId;

//App Store评价
+ (void)wJumpToAppStoreEvaluation:(NSString *)appID;

//分享给朋友
+ (void)wShareToFriends:(NSString *)name imageName:(NSString *)imgName appId:(int)appId;

//意见反馈
+ (void)wJumpToAppFeedback:(NSString *)appid;

@end

NS_ASSUME_NONNULL_END
