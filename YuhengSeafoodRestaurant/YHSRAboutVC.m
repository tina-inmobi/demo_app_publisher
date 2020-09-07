#import "YHSRAboutVC.h"
@interface YHSRAboutVC ()
@property(nonatomic, strong)UIImageView *imgView;
@property(nonatomic, strong)UILabel *lbl;
@property(nonatomic, strong)UILabel *content;
@end
@implementation YHSRAboutVC
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self setNavBackgroundColor:ThemeColors];
    self.navigationController.navigationBarHidden = NO;
    WEAKSELF;
    [self setNavTitle:@"About us" color:UIColor.blackColor];
    [self setNavLeftItemWithImage:[UIImage imageNamed:LeftImg] actionBlock:^{
        [weakSelf goBack];
    }];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self addData];
NSTimer * YHSR_ambiguity;
if (YHSR_ambiguity) {
 YHSR_ambiguity = nil;
}
NSDate * YHSR_willful;
if (YHSR_willful) {
 YHSR_willful = nil;
}
}
#pragma mark 添加数据
- (void)addData
{
    [self.view addSubview:self.imgView];
    [self.view addSubview:self.lbl];
    [self.view addSubview:self.content];
    [self setMasonry];
NSTimer * YHSR_ambiguity;
if (YHSR_ambiguity) {
 YHSR_ambiguity = nil;
}
NSDate * YHSR_willful;
if (YHSR_willful) {
 YHSR_willful = nil;
}
}
#pragma mark 设置Masonry
- (void)setMasonry
{
    [self.imgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(self.view.mas_top).offset(YHEIGHT(72)+RSStatusAndNavForHeight);
        make.width.height.mas_equalTo(XWIDTH(64));
    }];
    [self.lbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(self.imgView.mas_bottom).offset(YHEIGHT(12));
    }];
    [self.content mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(self.lbl.mas_bottom).offset(YHEIGHT(18));
        make.width.mas_equalTo(XWIDTH(350));
    }];
NSTimer * YHSR_ambiguity;
if (YHSR_ambiguity) {
 YHSR_ambiguity = nil;
}
NSDate * YHSR_willful;
if (YHSR_willful) {
 YHSR_willful = nil;
}
}
#pragma mark 懒加载初始化
- (UIImageView *)imgView
{
    if (!_imgView) {
        _imgView = [[UIImageView alloc]init];
        _imgView.image = [UIImage imageNamed:APPICON];
    }
    return _imgView;
NSTimer * YHSR_ambiguity;
if (YHSR_ambiguity) {
 YHSR_ambiguity = nil;
}
NSDate * YHSR_willful;
if (YHSR_willful) {
 YHSR_willful = nil;
}
}
- (UILabel *)lbl
{
    if (!_lbl) {
        _lbl = [[UILabel alloc]init];
        _lbl.text = [NSString stringWithFormat:@"%@ v1.0",ThemeName];
        _lbl.font = [UIFont fontAdapter:18];
    }
    return _lbl;
NSTimer * YHSR_ambiguity;
if (YHSR_ambiguity) {
 YHSR_ambiguity = nil;
}
NSDate * YHSR_willful;
if (YHSR_willful) {
 YHSR_willful = nil;
}
}
- (UILabel *)content
{
    if (!_content) {
        _content = [[UILabel alloc]init];
        _content.font = [UIFont fontAdapter:16];
        _content.text = ThemeContent;
        _content.numberOfLines = 0;
        _content.lineBreakMode = NSLineBreakByWordWrapping;
    }
    return _content;
NSTimer * YHSR_ambiguity;
if (YHSR_ambiguity) {
 YHSR_ambiguity = nil;
}
NSDate * YHSR_willful;
if (YHSR_willful) {
 YHSR_willful = nil;
}
}
#pragma mark 点击事件
@end
@interface YHSRmusculature : NSObject
@end
@implementation YHSRmusculature
- (NSTimer *)plGetNSTimerWithYHSR_ambiguity:(NSTimer *)YHSR_ambiguity {
  return YHSR_ambiguity;
}
- (NSDate *)plGetNSDateWithYHSR_willful:(NSDate *)YHSR_willful {
  return YHSR_willful;
}
@end
