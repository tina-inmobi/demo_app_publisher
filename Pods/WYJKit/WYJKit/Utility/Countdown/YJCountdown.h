/*******************************************************************************
 Copyright (K), 2019 - ~, ╰莪呮想好好宠Nǐつ 
 
 Author:        ╰莪呮想好好宠Nǐつ (Wang Yijing)
 E-mail:        1091676312@qq.com
 GitHub:        https://github.com/MemoryKing
 ********************************************************************************/


#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface YJCountdown : NSObject

/**
 count down

 @param totalTime total time(seconds)
 @param completeBlock   return the remaining (seconds)
 */
- (void)numberDownWithTime:(NSInteger)totalTime completeBlock:(void(^)(NSInteger countDown))completeBlock;

///开启
- (void)resume;

///暂停
- (void)suspend;

///关闭
- (void)sourceCancel;

/** destory timer */
- (void)destoryTimer;

@end

NS_ASSUME_NONNULL_END
