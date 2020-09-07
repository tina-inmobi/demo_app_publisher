#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN
@interface YHSRToolManager : NSObject
+ (void)inAppScoring;
+ (void)appStoreEvaluation;
+ (void)shareItWithFriends:(NSString *)name appId:(int)appId;
+ (void)feedback;
+ (void)aboutApplications;
@end
NS_ASSUME_NONNULL_END
