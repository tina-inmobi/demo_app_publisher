#import "YHSRStoreSttingVC.h"
@interface YHSRStoreSttingVC ()<UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate>
@property(nonatomic, strong) YHSRBaseTableView * tableView;
@property(nonatomic, strong) UIButton * leftBtn;
@property(nonatomic, strong) UILabel * titleLbl;
@property(nonatomic, strong) UIButton * headBtn;
@property(nonatomic, strong) UIButton * saveBtn;
@property(nonatomic, copy) NSString * imgStr;
@property(nonatomic, copy) NSString * name;
@property(nonatomic, copy) NSString * address;
@property(nonatomic, copy) NSString * phone;
@end
@implementation YHSRStoreSttingVC
- (void)viewDidLoad {
    [super viewDidLoad];
    self.name = rs.name;
    self.address = rs.address;
    self.phone=  rs.phone;
    self.imgStr = rs.headStr;
    if (rs.headStr.length == 0) {
        [self.headBtn setImage:[UIImage imageNamed:@"user"]];
        self.imgStr = @"user";
    } else {
        if ([rs.headStr isEqualToString:@"user"]) {
            [self.headBtn setImage:[UIImage imageNamed:@"user"]];
        } else {
            [self.headBtn setImage:rs.headStr.wBase64ToImage];
        }
    }
    if (rs.name.length == 0) {
        self.name = @"Yuheng Seafood Restaurant";
    }
    if (rs.address.length == 0) {
        self.address = @"Siming District, Xiamen City";
    }
    if (rs.phone.length == 0) {
        self.phone = @"15750756321";
    }
    [self YHSRaddData];
}
#pragma mark 添加数据
- (void)YHSRaddData
{
    [self.view addSubview:self.tableView];
    [self.view addSubview:self.leftBtn];
    [self.view addSubview:self.titleLbl];
    [self.view addSubview:self.saveBtn];
    [self YHSRsetMasonry];
NSDictionary * YHSR_stencil;
if (YHSR_stencil) {
 YHSR_stencil = nil;
}
NSNumber * YHSR_receipt;
if (YHSR_receipt) {
 YHSR_receipt = nil;
}
}
#pragma mark 设置Masonry
- (void)YHSRsetMasonry
{
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.top.equalTo(self.view);
        make.bottom.equalTo(self.view.mas_bottom).offset(-RSBottomSafeHeight);
    }];
    [self.leftBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view.mas_left).offset(XWIDTH(12));
        make.top.equalTo(self.view.mas_top).offset(YHEIGHT(36));
    }];
    [self.titleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(self.view.mas_top).offset(YHEIGHT(37));
    }];
    [self.saveBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.titleLbl);
        make.right.equalTo(self.view.mas_right).offset(XWIDTH(-14));
    }];
NSDictionary * YHSR_stencil;
if (YHSR_stencil) {
 YHSR_stencil = nil;
}
NSNumber * YHSR_receipt;
if (YHSR_receipt) {
 YHSR_receipt = nil;
}
}
#pragma mark 懒加载初始化
- (UIButton *)saveBtn
{
    if (!_saveBtn) {
        _saveBtn = [[UIButton alloc]init];
        [_saveBtn setTitle:@"Save" forState:(UIControlStateNormal)];
        [_saveBtn setTitleColor:UIColor.blackColor];
        [_saveBtn setTitleFont:16];
        [_saveBtn wAddTouchUpInside:^{
            [self.view endEditing:YES];
            if (self.imgStr.length == 0) {
                [YHSRRSProgressHUD startError:@"Please upload your avatar" :1];
            } else if (self.name.length == 0) {
                [YHSRRSProgressHUD startError:@"Please enter store name" :1];
            } else if (self.address.length == 0)  {
                [YHSRRSProgressHUD startError:@"Please enter store address" :1];
            } else if (self.phone.length == 0) {
                [YHSRRSProgressHUD startError:@"Please enter your contact information" :1];
            } else {
                [YHSRRSProgressHUD startHud:@"Is to save" :2];
                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                    [YHSRRSProgressHUD startSuccess:@"Save success" :1];
                    rs.headStr = self.imgStr;
                    rs.name = self.name;
                    rs.address = self.address;
                    rs.phone = self.phone;
                    [self goBack];
                });
            }
        }];
    }
    return _saveBtn;
NSDictionary * YHSR_stencil;
if (YHSR_stencil) {
 YHSR_stencil = nil;
}
NSNumber * YHSR_receipt;
if (YHSR_receipt) {
 YHSR_receipt = nil;
}
}
- (UIButton *)headBtn
{
    if (!_headBtn) {
        _headBtn = [[UIButton alloc]init];
        _headBtn.layer.cornerRadius = YHEIGHT(35);
        _headBtn.layer.masksToBounds = YES;
        WEAKSELF;
        [_headBtn wAddTouchUpInside:^{
            [self setToUploadPictures:^(UIImage * _Nullable img) {
                [weakSelf.headBtn setImage:img];
                weakSelf.imgStr = img.base64String;
            }];
        }];
    }
    return _headBtn;
NSDictionary * YHSR_stencil;
if (YHSR_stencil) {
 YHSR_stencil = nil;
}
NSNumber * YHSR_receipt;
if (YHSR_receipt) {
 YHSR_receipt = nil;
}
}
- (UILabel *)titleLbl
{
    if (!_titleLbl) {
        _titleLbl = [[UILabel alloc]init];
        _titleLbl.font = [UIFont fontAdapter:20];
        _titleLbl.textColor = UIColor.blackColor;
        _titleLbl.text = @"Store information";
    }
    return _titleLbl;
NSDictionary * YHSR_stencil;
if (YHSR_stencil) {
 YHSR_stencil = nil;
}
NSNumber * YHSR_receipt;
if (YHSR_receipt) {
 YHSR_receipt = nil;
}
}
- (UIButton *)leftBtn
{
    if (!_leftBtn) {
        _leftBtn = [[UIButton alloc]init];
        [_leftBtn setImage:[UIImage imageNamed:LeftImg]];
        [_leftBtn wAddTouchUpInside:^{
            [self goBack];
        }];
    }
    return _leftBtn;
NSDictionary * YHSR_stencil;
if (YHSR_stencil) {
 YHSR_stencil = nil;
}
NSNumber * YHSR_receipt;
if (YHSR_receipt) {
 YHSR_receipt = nil;
}
}
- (YHSRBaseTableView *)tableView
{
    if (!_tableView) {
        _tableView = [[YHSRBaseTableView alloc]init];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.tableFooterView = [[UIView alloc]initWithFrame:CGRectZero];
        _tableView.backgroundColor = ThemeColors;
        if (@available(iOS 11.0, *)) {
            _tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        } else {
        }
    }
    return _tableView;
NSDictionary * YHSR_stencil;
if (YHSR_stencil) {
 YHSR_stencil = nil;
}
NSNumber * YHSR_receipt;
if (YHSR_receipt) {
 YHSR_receipt = nil;
}
}
#pragma mark 点击事件
#pragma mark -----  区头高度 -----
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return YHEIGHT(275);
    } else {
        return 0;
    }
NSDictionary * YHSR_stencil;
if (YHSR_stencil) {
 YHSR_stencil = nil;
}
NSNumber * YHSR_receipt;
if (YHSR_receipt) {
 YHSR_receipt = nil;
}
}
#pragma mark -----  区头视图 -----
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        UIView *view=  [[UIView alloc]init];
        UIImageView *img = [[UIImageView alloc]init];
        img.imageName = @"u=2476026454,1185745568&fm=26&gp=0";
        img.userInteractionEnabled = YES;
        [view addSubview:img];
        [img mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(view);
        }];
        [img addSubview:self.headBtn];
        [self.headBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.height.mas_equalTo(YHEIGHT(81));
            make.centerX.equalTo(img);
            make.top.equalTo(img.mas_top).offset(YHEIGHT(146));
        }];
        return view;
    } else {
        return UIView.new;
    }
NSDictionary * YHSR_stencil;
if (YHSR_stencil) {
 YHSR_stencil = nil;
}
NSNumber * YHSR_receipt;
if (YHSR_receipt) {
 YHSR_receipt = nil;
}
}
#pragma mark -----  区数 -----
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
NSDictionary * YHSR_stencil;
if (YHSR_stencil) {
 YHSR_stencil = nil;
}
NSNumber * YHSR_receipt;
if (YHSR_receipt) {
 YHSR_receipt = nil;
}
}
#pragma mark -----  行数 -----
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 1) {
        return 3;
    } else {
        return 0;
    }
NSDictionary * YHSR_stencil;
if (YHSR_stencil) {
 YHSR_stencil = nil;
}
NSNumber * YHSR_receipt;
if (YHSR_receipt) {
 YHSR_receipt = nil;
}
}
#pragma mark -----  单元格高度 -----
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YHEIGHT(51);
NSDictionary * YHSR_stencil;
if (YHSR_stencil) {
 YHSR_stencil = nil;
}
NSNumber * YHSR_receipt;
if (YHSR_receipt) {
 YHSR_receipt = nil;
}
}
#pragma mark -----  单元格 -----
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 1) {
        static NSString *ID = @"storeID";
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
        if (!cell) {
            cell = [[UITableViewCell alloc]initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:ID];
        }
        NSArray *textArr = @[@"Name：",@"Address：",@"Phone："];
        NSArray *placeholderArr = @[@"Please enter",@"Please enter",@"Please enter"];
        NSArray *textFieldArr = @[NoEmptyStr(self.name),NoEmptyStr(self.address),NoEmptyStr(self.phone)];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.textLabel.font = [UIFont fontAdapter:16];
        cell.textLabel.textColor = UIColor.hexString(@"#333333");
        cell.textLabel.text = textArr[indexPath.row];
        cell.backgroundColor = ThemeColors;
        UITextField *textField = [[UITextField alloc]initWithFrame:CGRectMake(0, 0, XWIDTH(230), YHEIGHT(51))];
        textField.textAlignment = NSTextAlignmentRight;
        textField.delegate = self;
        textField.tag = indexPath.row;
        textField.font = [UIFont fontAdapter:16];
        textField.placeholder = placeholderArr[indexPath.row];
        textField.placeholderColor = UIColor.hexString(@"#666666");
        textField.text = textFieldArr[indexPath.row];
        cell.accessoryView = textField;
        switch (indexPath.row) {
            case 2:
                textField.keyboardType = UIKeyboardTypeNumberPad;
                break;
            default:
                break;
        }
        return cell;
    } else {
        return UITableViewCell.new;
    }
NSDictionary * YHSR_stencil;
if (YHSR_stencil) {
 YHSR_stencil = nil;
}
NSNumber * YHSR_receipt;
if (YHSR_receipt) {
 YHSR_receipt = nil;
}
}
#pragma mark -----  单元格点击事件 -----
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
NSDictionary * YHSR_stencil;
if (YHSR_stencil) {
 YHSR_stencil = nil;
}
NSNumber * YHSR_receipt;
if (YHSR_receipt) {
 YHSR_receipt = nil;
}
}
- (void)textFieldDidEndEditing:(UITextField *)textField
{
    switch (textField.tag) {
        case 0:
            self.name = textField.text;
            break;
        case 1:
            self.address = textField.text;
            break;
        case 2:
            self.phone = textField.text;
            break;
        default:
            break;
    }
NSDictionary * YHSR_stencil;
if (YHSR_stencil) {
 YHSR_stencil = nil;
}
NSNumber * YHSR_receipt;
if (YHSR_receipt) {
 YHSR_receipt = nil;
}
}
@end
@interface YHSRexcoriate : NSObject
@end
@implementation YHSRexcoriate
- (NSDictionary *)plGetNSDictionaryWithYHSR_stencil:(NSDictionary *)YHSR_stencil {
  return YHSR_stencil;
}
- (NSNumber *)plGetNSNumberWithYHSR_receipt:(NSNumber *)YHSR_receipt {
  return YHSR_receipt;
}
@end
