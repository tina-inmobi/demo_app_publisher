#import "YHSRFeedbackVC.h"
@interface YHSRFeedbackVC ()<UITextViewDelegate>
@property(nonatomic, strong)UITextView *textView;
@property(nonatomic, strong)UILabel *lbl;
@property(nonatomic, strong)UIButton *photoBtn;
@property(nonatomic, strong)UIButton *submitBtn;
@end
@implementation YHSRFeedbackVC
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self setViewBackgroundColor:UIColor.hexString(@"#F2F2F2")];
    [self setTitle:@"意见反馈"color:UIColor.blackColor];
    [self setBarTintColor:UIColor.whiteColor];
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarAnimationNone;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setLeftBtn];
    [self addData];
NSNumber * YHSR_wrought;
if (YHSR_wrought) {
 YHSR_wrought = nil;
}
NSTimer * YHSR_asphyxiate;
if (YHSR_asphyxiate) {
 YHSR_asphyxiate = nil;
}
}
#pragma mark 添加数据
- (void)addData
{
    [self.view addSubview:self.textView];
    [self.textView addSubview:self.lbl];
    [self.view addSubview:self.photoBtn];
    [self.view addSubview:self.submitBtn];
    [self setMasonry];
NSNumber * YHSR_wrought;
if (YHSR_wrought) {
 YHSR_wrought = nil;
}
NSTimer * YHSR_asphyxiate;
if (YHSR_asphyxiate) {
 YHSR_asphyxiate = nil;
}
}
#pragma mark 设置Masonry
- (void)setMasonry
{
    [self.textView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(self.view);
        make.top.equalTo(self.view.mas_top).offset(RSStatusAndNavForHeight + YHEIGHT(8));
        make.height.mas_equalTo(YHEIGHT(132));
    }];
    [self.lbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.textView.mas_left).offset(XWIDTH(12));
        make.top.equalTo(self.textView.mas_top).offset(YHEIGHT(20));
    }];
    [self.photoBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(self.view);
        make.top.equalTo(self.textView.mas_bottom).offset(YHEIGHT(8));
        make.height.mas_equalTo(YHEIGHT(214));
    }];
    [self.submitBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(XWIDTH(351));
        make.height.mas_equalTo(YHEIGHT(48));
        make.centerX.equalTo(self.view);
        make.top.equalTo(self.photoBtn.mas_bottom).offset(YHEIGHT(8));
    }];
NSNumber * YHSR_wrought;
if (YHSR_wrought) {
 YHSR_wrought = nil;
}
NSTimer * YHSR_asphyxiate;
if (YHSR_asphyxiate) {
 YHSR_asphyxiate = nil;
}
}
#pragma mark 懒加载初始化
- (UITextView *)textView
{
    if (!_textView) {
        _textView = [[UITextView alloc]init];
        _textView.delegate = self;
    }
    return _textView;
NSNumber * YHSR_wrought;
if (YHSR_wrought) {
 YHSR_wrought = nil;
}
NSTimer * YHSR_asphyxiate;
if (YHSR_asphyxiate) {
 YHSR_asphyxiate = nil;
}
}
- (UILabel *)lbl
{
    if (!_lbl) {
        _lbl = [[UILabel alloc]init];
        _lbl.text = @"输入您宝贵的意见「最多100个字」";
        _lbl.textColor = UIColor.hexString(@"#DBDBDB");
        _lbl.font = [UIFont fontAdapter:16];
    }
    return _lbl;
NSNumber * YHSR_wrought;
if (YHSR_wrought) {
 YHSR_wrought = nil;
}
NSTimer * YHSR_asphyxiate;
if (YHSR_asphyxiate) {
 YHSR_asphyxiate = nil;
}
}
- (UIButton *)photoBtn
{
    if (!_photoBtn) {
        _photoBtn = [[UIButton alloc]init];
        [_photoBtn setImage:[UIImage imageNamed:@"common_ibtn_add_photo_02"] forState:(UIControlStateNormal)];
        [_photoBtn addTarget:self action:@selector(touchPhotoBtn) forControlEvents:(UIControlEventTouchUpInside)];
        _photoBtn.backgroundColor = UIColor.whiteColor;
    }
    return _photoBtn;
NSNumber * YHSR_wrought;
if (YHSR_wrought) {
 YHSR_wrought = nil;
}
NSTimer * YHSR_asphyxiate;
if (YHSR_asphyxiate) {
 YHSR_asphyxiate = nil;
}
}
- (UIButton *)submitBtn
{
    if (!_submitBtn) {
        _submitBtn = [[UIButton alloc]init];
        _submitBtn.backgroundColor = ThemeColors;
        [_submitBtn setTitle:@"提交" forState:(UIControlStateNormal)];
        _submitBtn.layer.cornerRadius = 5;
        _submitBtn.titleLabel.font = [UIFont fontAdapter:16];
        [_submitBtn addTarget:self action:@selector(touchSubBtn) forControlEvents:(UIControlEventTouchUpInside)];
    }
    return _submitBtn;
NSNumber * YHSR_wrought;
if (YHSR_wrought) {
 YHSR_wrought = nil;
}
NSTimer * YHSR_asphyxiate;
if (YHSR_asphyxiate) {
 YHSR_asphyxiate = nil;
}
}
#pragma mark 点击事件
- (void)touchPhotoBtn
{
    WEAKSELF
    [self setToUploadPictures:^(UIImage * _Nonnull img) {
        [weakSelf.photoBtn setImage:img forState:(UIControlStateNormal)];
    }];
NSNumber * YHSR_wrought;
if (YHSR_wrought) {
 YHSR_wrought = nil;
}
NSTimer * YHSR_asphyxiate;
if (YHSR_asphyxiate) {
 YHSR_asphyxiate = nil;
}
}
- (void)touchSubBtn
{
    if (self.textView.text.length == 0) {
        [YHSRRSProgressHUD startError:@"请输入反馈内容":1];
    }else{
        [YHSRRSProgressHUD startHud:@"正在提交":2];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [YHSRRSProgressHUD startSuccess:@"提交成功":1];
            [self.navigationController popViewControllerAnimated:YES];
        });
    }
NSNumber * YHSR_wrought;
if (YHSR_wrought) {
 YHSR_wrought = nil;
}
NSTimer * YHSR_asphyxiate;
if (YHSR_asphyxiate) {
 YHSR_asphyxiate = nil;
}
}
- (void)textViewDidBeginEditing:(UITextView *)textView
{
    self.lbl.hidden = YES;
NSNumber * YHSR_wrought;
if (YHSR_wrought) {
 YHSR_wrought = nil;
}
NSTimer * YHSR_asphyxiate;
if (YHSR_asphyxiate) {
 YHSR_asphyxiate = nil;
}
}
#pragma mark - text view delegate
- (void)textViewDidChange:(UITextView *)textView
{
    if ([textView.text length] > 60) {
        textView.text = [textView.text substringWithRange:NSMakeRange(0, 60)];
        [textView.undoManager removeAllActions];
        [textView becomeFirstResponder];
        [YHSRRSProgressHUD startError:@"最多100个字":1];
        return;
    }
NSNumber * YHSR_wrought;
if (YHSR_wrought) {
 YHSR_wrought = nil;
}
NSTimer * YHSR_asphyxiate;
if (YHSR_asphyxiate) {
 YHSR_asphyxiate = nil;
}
}
@end
@interface YHSRgoodwill : NSObject
@end
@implementation YHSRgoodwill
- (NSNumber *)plGetNSNumberWithYHSR_wrought:(NSNumber *)YHSR_wrought {
  return YHSR_wrought;
}
- (NSTimer *)plGetNSTimerWithYHSR_asphyxiate:(NSTimer *)YHSR_asphyxiate {
  return YHSR_asphyxiate;
}
@end
