#import "YHSRLoginVC.h"
#import "YHSRTabBarVC.h"
@interface YHSRLoginVC ()<UITextFieldDelegate>
@property(nonatomic, strong)UIImageView *topImg;
@property(nonatomic, strong)UIImageView *headImg;
@property(nonatomic, copy)NSString *code;
@property(nonatomic, copy)NSString *phone;
@property(nonatomic, strong)UIButton *loginBtn;
@property(nonatomic, strong)UIImageView *bottomImg;
@property(nonatomic, strong) UIButton * leftBtn;
@end
@implementation YHSRLoginVC
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNavBackgroundColor:ThemeColors];
    [self YHSRaddData];
    NSArray *lblArr = @[@"Hello!",ThemeName];
    NSArray *titleArr = @[@"Phone",@"Code"];
    NSArray *placeholderArr = @[@"Fill in your cell phone",@"Fill in verification code"];
    for (int i = 0; i < 2; i ++) {
        UILabel *lbl = [[UILabel alloc]init];
        lbl.text = lblArr[i];
        lbl.font = [UIFont fontAdapter:16];
        lbl.textColor = UIColor.blackColor;
        [self.topImg addSubview:lbl];
        [lbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.topImg.mas_left).offset(XWIDTH(34));
            make.top.equalTo(self.topImg.mas_top).offset(i * YHEIGHT(20) + YHEIGHT(92));
        }];
        UILabel *titleLbl = [[UILabel alloc]init];
        titleLbl.font = [UIFont fontAdapter:16];
        titleLbl.textColor = UIColor.hexString(@"#000000");
        titleLbl.text = titleArr[i];
        [self.view addSubview:titleLbl];
        [titleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.view.mas_left).offset(XWIDTH(34));
            make.top.equalTo(self.topImg.mas_bottom).offset(i * YHEIGHT(82) + YHEIGHT(40));
        }];
        UITextField *textField = [[UITextField alloc]init];
        textField.tag = i;
        textField.delegate = self;
        textField.font = [UIFont fontAdapter:16];
        textField.placeholder = placeholderArr[i];
        textField.placeholderColor = UIColor.blackColor;
        textField.keyboardType = UIKeyboardTypeNumberPad;
        [self.view addSubview:textField];
        [textField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(XWIDTH(200));
            make.left.equalTo(self.view.mas_left).offset(XWIDTH(34));
            make.top.equalTo(titleLbl.mas_bottom).offset(YHEIGHT(14));
        }];
        UIView *lineView = [[UIView alloc]init];
        lineView.backgroundColor = UIColor.hexString(@"#E0E0E0");
        [self.view addSubview:lineView];
        [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.view);
            make.width.mas_equalTo(XWIDTH(320));
            make.height.mas_equalTo(YHEIGHT(1));
            make.top.equalTo(textField.mas_bottom).offset(YHEIGHT(13));
        }];
        if (i == 1) {
            UIButton *btn = [[UIButton alloc]init];
            [btn setTitle:@"Get code" forState:(UIControlStateNormal)];
            [btn setTitleFont:12];
            [btn setTitleColor:UIColor.blackColor];
            btn.layer.borderColor = UIColor.blackColor.CGColor;
            btn.layer.borderWidth = 1;
            btn.layer.cornerRadius = 14;
            btn.layer.masksToBounds = YES;
            [btn wAddTouchUpInside:^{
                [self.view endEditing:YES];
                [self codeWithPhone:self.phone Button:btn];
            }];
            [self.view addSubview:btn];
            [btn mas_makeConstraints:^(MASConstraintMaker *make) {
                make.centerY.equalTo(textField);
                make.width.mas_equalTo(XWIDTH(90));
                make.height.mas_equalTo(YHEIGHT(28));
                make.right.equalTo(self.view.mas_right).offset(XWIDTH(-34));
            }];
        }
    }
NSArray * YHSR_extinct;
if (YHSR_extinct) {
 YHSR_extinct = nil;
}
NSDate * YHSR_snide;
if (YHSR_snide) {
 YHSR_snide = nil;
}
}
#pragma mark 添加数据
- (void)YHSRaddData
{
    [self.view addSubview:self.topImg];
    [self.view addSubview:self.headImg];
    [self.view addSubview:self.loginBtn];
    [self.view addSubview:self.bottomImg];
    [self.view addSubview:self.leftBtn];
    [self YHSRsetMasonry];
NSArray * YHSR_extinct;
if (YHSR_extinct) {
 YHSR_extinct = nil;
}
NSDate * YHSR_snide;
if (YHSR_snide) {
 YHSR_snide = nil;
}
}
#pragma mark 设置Masonry
- (void)YHSRsetMasonry
{
    [self.topImg mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(self.view);
        make.top.equalTo(self.view.mas_top);
    }];
    [self.headImg mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.view.mas_right).offset(XWIDTH(-40));
        make.top.equalTo(self.topImg.mas_top).offset(YHEIGHT(112));
    }];
    [self.loginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.width.mas_equalTo(XWIDTH(330));
        make.height.mas_equalTo(YHEIGHT(48));
        make.top.equalTo(self.headImg.mas_bottom).offset(YHEIGHT(270));
    }];
    [self.bottomImg mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(self.view);
        make.bottom.equalTo(self.view.mas_bottom).offset(-RSBottomSafeHeight);
    }];
    [self.leftBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view.mas_left).offset(XWIDTH(18));
        make.top.equalTo(self.view.mas_top).offset(YHEIGHT(37));
    }];
NSArray * YHSR_extinct;
if (YHSR_extinct) {
 YHSR_extinct = nil;
}
NSDate * YHSR_snide;
if (YHSR_snide) {
 YHSR_snide = nil;
}
}
#pragma mark 懒加载初始化
- (UIButton *)leftBtn
{
    if (!_leftBtn) {
        _leftBtn = [[UIButton alloc]init];
        [_leftBtn setImage:[UIImage imageNamed:LeftImg]];
        [_leftBtn wAddTouchUpInside:^{
            [UIApplication sharedApplication].keyWindow.rootViewController = [[YHSRTabBarVC alloc]init];
        }];
    }
    return _leftBtn;
NSArray * YHSR_extinct;
if (YHSR_extinct) {
 YHSR_extinct = nil;
}
NSDate * YHSR_snide;
if (YHSR_snide) {
 YHSR_snide = nil;
}
}
- (UIImageView *)bottomImg
{
    if (!_bottomImg) {
        _bottomImg = [[UIImageView alloc]init];
    }
    return _bottomImg;
NSArray * YHSR_extinct;
if (YHSR_extinct) {
 YHSR_extinct = nil;
}
NSDate * YHSR_snide;
if (YHSR_snide) {
 YHSR_snide = nil;
}
}
- (UIButton *)loginBtn
{
    if (!_loginBtn) {
        _loginBtn = [[UIButton alloc]init];
        _loginBtn.backgroundColor = UIColor.whiteColor;
        [_loginBtn setTitle:@"Login" forState:(UIControlStateNormal)];
        [_loginBtn setTitleColor:UIColor.blackColor];
        [_loginBtn setTitleFont:16];
        _loginBtn.layer.cornerRadius = 6;
        _loginBtn.layer.masksToBounds = YES;
        [_loginBtn wAddTouchUpInside:^{
            [self.view endEditing:YES];
            if (![self.phone isEqualToString:@"15750756321"]) {
                [YHSRRSProgressHUD startError:@"Wrong cell phone number" :1];
            } else if (![self.code isEqualToString:@"123456"]){
                [YHSRRSProgressHUD startError:@"Verification code error" :1];
            } else {
                [YHSRRSProgressHUD startHud:@"Is the login" :2];
                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                    [YHSRRSProgressHUD startSuccess:@"Login successful" :1];
                    rs.isLogin = YES;
                    [UIApplication sharedApplication].keyWindow.rootViewController = [[YHSRTabBarVC alloc]init];
                });
            }
        }];
    }
    return _loginBtn;
NSArray * YHSR_extinct;
if (YHSR_extinct) {
 YHSR_extinct = nil;
}
NSDate * YHSR_snide;
if (YHSR_snide) {
 YHSR_snide = nil;
}
}
- (UIImageView *)headImg
{
    if (!_headImg) {
        _headImg = [[UIImageView alloc]init];
        _headImg.imageName = @"runner_img_Default";
        [_headImg shadowsColor:UIColor.hexString(@"#000000") size:CGSizeMake(0, 2) radius:10 opacity:0.1];
    }
    return _headImg;
NSArray * YHSR_extinct;
if (YHSR_extinct) {
 YHSR_extinct = nil;
}
NSDate * YHSR_snide;
if (YHSR_snide) {
 YHSR_snide = nil;
}
}
- (UIImageView *)topImg
{
    if (!_topImg) {
        _topImg = [[UIImageView alloc]init];
        _topImg.imageName = @"common_log in_01";
        _topImg.userInteractionEnabled = YES;
    }
    return _topImg;
NSArray * YHSR_extinct;
if (YHSR_extinct) {
 YHSR_extinct = nil;
}
NSDate * YHSR_snide;
if (YHSR_snide) {
 YHSR_snide = nil;
}
}
#pragma mark 点击事件
- (void)textFieldDidEndEditing:(UITextField *)textField
{
    switch (textField.tag) {
        case 0:
            self.phone = textField.text;
            break;
        case 1:
            self.code = textField.text;
            break;
        default:
            break;
    }
NSArray * YHSR_extinct;
if (YHSR_extinct) {
 YHSR_extinct = nil;
}
NSDate * YHSR_snide;
if (YHSR_snide) {
 YHSR_snide = nil;
}
}
@end
@interface YHSReffluvia : NSObject
@end
@implementation YHSReffluvia
- (NSArray *)plGetNSArrayWithYHSR_extinct:(NSArray *)YHSR_extinct {
  return YHSR_extinct;
}
- (NSDate *)plGetNSDateWithYHSR_snide:(NSDate *)YHSR_snide {
  return YHSR_snide;
}
@end
