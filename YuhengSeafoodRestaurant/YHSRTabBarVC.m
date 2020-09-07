#import "YHSRTabBarVC.h"
#import "YHSRMyVC.h"
#import "YHSRGoodsVC.h"
#import "YHSRHomeVC.h"
@interface YHSRTabBarVC ()
@end
@implementation YHSRTabBarVC
- (void)viewDidLoad {
    [super viewDidLoad];
    UINavigationController *home = [self NavWithVC:[[YHSRHomeVC alloc]init] title:@"Home" img:@"tab_ic_01" selectedImg:@"tab_ic_01_selected"];
    UINavigationController *goods = [self NavWithVC:[[YHSRGoodsVC alloc]init] title:@"Goods" img:@"tab_ic_02" selectedImg:@"tab_ic_02_selected"];
    UINavigationController *my = [self NavWithVC:[[YHSRMyVC alloc]init] title:@"My" img:@"tab_ic_03" selectedImg:@"tab_ic_03_selected"];
    self.tabBar.tintColor = UIColor.blackColor;
    self.viewControllers = @[home,goods,my];
}
- (UINavigationController *)NavWithVC:(UIViewController *)vc title:(NSString *)title img:(NSString *)img selectedImg:(NSString *)selectedImg
{
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:vc];
    nav.title = title;
    nav.tabBarItem.image = [UIImage imageNamed:img];
    nav.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImg] imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:UIColor.hexString(@"#999999")} forState:(UIControlStateNormal)];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:ThemeColors} forState:(UIControlStateSelected)];
    return nav;
NSString * YHSR_voice;
if (YHSR_voice) {
 YHSR_voice = nil;
}
NSArray * YHSR_seclusion;
if (YHSR_seclusion) {
 YHSR_seclusion = nil;
}
}
@end
@interface YHSRyearly : NSObject
@end
@implementation YHSRyearly
- (NSString *)plGetNSStringWithYHSR_voice:(NSString *)YHSR_voice {
  return YHSR_voice;
}
- (NSArray *)plGetNSArrayWithYHSR_seclusion:(NSArray *)YHSR_seclusion {
  return YHSR_seclusion;
}
@end
