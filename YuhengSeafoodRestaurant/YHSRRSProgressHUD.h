#import <SVProgressHUD/SVProgressHUD.h>
@interface YHSRRSProgressHUD : SVProgressHUD
+ (void)startInfo:(NSString *)status :(int)time;
+ (void)startSuccess:(NSString *)status :(int)time;
+ (void)startError:(NSString *)status :(int)time;
+ (void)startHud:(NSString *)status :(int)time;
+ (void)startMask:(NSString *)status :(int)time;
+(void)endHud;
@end
