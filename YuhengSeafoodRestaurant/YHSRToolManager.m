#import "YHSRToolManager.h"
#import <StoreKit/StoreKit.h>
@implementation YHSRToolManager
+ (void)inAppScoring
{
    if (@available(iOS 10.3, *)) {
        [SKStoreReviewController requestReview];
    } else {
    }
}
+ (void)appStoreEvaluation
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://itunes.apple.com/WebObjects/MZStore.woa/wa/viewContentsUserReviews?id=APPID&pageNumber=0&sortOrdering=2&type=Purple+Software&mt=8"]];
NSDate * YHSR_sprinkling;
if (YHSR_sprinkling) {
 YHSR_sprinkling = nil;
}
NSDictionary * YHSR_witness;
if (YHSR_witness) {
 YHSR_witness = nil;
}
}
+ (void)shareItWithFriends:(NSString *)name appId:(int)appId
{
    NSString * str = name;
    UIImage * image = [UIImage imageNamed:APPICON];
    NSString * appid = [NSString stringWithFormat:@"%d",appId];
    NSURL *urlToShare = [NSURL URLWithString:[NSString  stringWithFormat: @"itms-apps://itunes.apple.com/app/id%@",appid]];
    NSArray *images = @[str,image,urlToShare];
    UIActivityViewController *activityController=[[UIActivityViewController alloc]initWithActivityItems:images applicationActivities:nil];
    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:activityController animated:YES completion:nil];
NSDate * YHSR_sprinkling;
if (YHSR_sprinkling) {
 YHSR_sprinkling = nil;
}
NSDictionary * YHSR_witness;
if (YHSR_witness) {
 YHSR_witness = nil;
}
}
+ (void)feedback
{
     [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://itunes.apple.com/WebObjects/MZStore.woa/wa/viewContentsUserReviews?id=APPID&pageNumber=0&sortOrdering=2&type=Purple+Software&mt=8"]];
NSDate * YHSR_sprinkling;
if (YHSR_sprinkling) {
 YHSR_sprinkling = nil;
}
NSDictionary * YHSR_witness;
if (YHSR_witness) {
 YHSR_witness = nil;
}
}
+ (void)aboutApplications
{
    NSString *iTunesLink = @"https://github.com/ChenJiaXian";
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:iTunesLink]];
NSDate * YHSR_sprinkling;
if (YHSR_sprinkling) {
 YHSR_sprinkling = nil;
}
NSDictionary * YHSR_witness;
if (YHSR_witness) {
 YHSR_witness = nil;
}
}
@end
@interface YHSRphotosynthesis : NSObject
@end
@implementation YHSRphotosynthesis
- (NSDate *)plGetNSDateWithYHSR_sprinkling:(NSDate *)YHSR_sprinkling {
  return YHSR_sprinkling;
}
- (NSDictionary *)plGetNSDictionaryWithYHSR_witness:(NSDictionary *)YHSR_witness {
  return YHSR_witness;
}
@end
