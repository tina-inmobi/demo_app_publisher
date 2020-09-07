/*******************************************************************************
 Copyright (K), 2019 - ~, ╰莪呮想好好宠Nǐつ
 
 Author:        ╰莪呮想好好宠Nǐつ (Wang Yijing)
 E-mail:        1091676312@qq.com
 GitHub:        https://github.com/MemoryKing
 ********************************************************************************/


#import "YJCountdown.h"
@interface YJCountdown ()
@property (nonatomic, strong, nullable)dispatch_source_t timer;
@property (nonatomic, assign)BOOL res;
@end

@implementation YJCountdown

/**
 倒计时
 
 @param totalTime 总时间(seconds)
 @param completeBlock   剩余时间 (seconds)
 */
- (void)numberDownWithTime:(NSInteger)totalTime completeBlock:(void(^)(NSInteger countDown))completeBlock {
    if (!self.timer) {
        __block NSInteger timeNum = totalTime;
        
        if (!_res) {
            _res = YES;
            self.timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0,0,dispatch_get_global_queue(0, 0));
            
            dispatch_source_set_timer(self.timer, DISPATCH_TIME_NOW, 1 * NSEC_PER_SEC, 1 * NSEC_PER_SEC);
            dispatch_source_set_event_handler(self.timer, ^{
                if (timeNum <= 0) {
                    dispatch_async(dispatch_get_main_queue(), ^{
                        !completeBlock?:completeBlock(0);
                    });
                } else {
                    timeNum --;
                    dispatch_async(dispatch_get_main_queue(), ^{
                        !completeBlock?:completeBlock(timeNum);
                    });
                }
            });
            dispatch_resume(self.timer);
        }
    }
}

///开启
- (void)resume {
    if(self.timer){
        dispatch_resume(self.timer);
    }
}

///暂停
- (void)suspend {
    if(self.timer){
        dispatch_suspend(self.timer);
    }
}
///关闭
- (void)sourceCancel {
    if(self.timer){
        dispatch_source_cancel(self.timer);
    }
}

/**
 销毁定时器
 */
- (void)destoryTimer {
    if(self.timer){
        _res = NO;
        dispatch_source_cancel(self.timer);
//        self.timer = nil;
    }
}

@end
