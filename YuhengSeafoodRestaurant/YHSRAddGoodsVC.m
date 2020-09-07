#import "YHSRAddGoodsVC.h"
#import "YHSRLoginVC.h"
@interface YHSRAddGoodsVC ()<UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate>
@property(nonatomic, strong) YHSRBaseTableView * tableView;
@property(nonatomic, strong) UIButton * photoBtn;
@property(nonatomic, copy)NSString *goodsImg;
@property(nonatomic, copy)NSString *goodsName;
@property(nonatomic, copy)NSString *number;
@property(nonatomic, copy)NSString *price;
@property(nonatomic, copy)NSString *type;
@property(nonatomic, copy)NSString *describe;
@property(nonatomic, assign)BOOL isHttp;
@end
@implementation YHSRAddGoodsVC
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    WEAKSELF;
    [self setNavTitle:self.titleStr color:UIColor.blackColor];
    [self setNavBackgroundColor:ThemeColors];
    [self setNavLeftItemWithImage:[UIImage imageNamed:LeftImg] actionBlock:^{
        [weakSelf goBack];
    }];
    [self setNavRightItemWithTitle:@"Save" color:UIColor.blackColor actionBlock:^{
        [weakSelf.view endEditing:YES];
        if (rs.isLogin == NO) {
            YHSRLoginVC *loginVC = [[YHSRLoginVC alloc]init];
            [weakSelf pushViewController:loginVC animated:NO];
        } else {
            if (self.goodsImg.length == 0) {
                [YHSRRSProgressHUD startError:@"Please upload pictures" :1];
            } else if (self.goodsName.length == 0) {
                [YHSRRSProgressHUD startError:@"Please enter name of the item" :1];
            } else if (self.number.length == 0) {
                [YHSRRSProgressHUD startError:@"Please enter inventory of goods" :1];
            } else if (self.price.length == 0) {
                [YHSRRSProgressHUD startError:@"Please enter price" :1];
            } else if (self.type.length == 0) {
                [YHSRRSProgressHUD startError:@"Please select the status of the item" :1];
            } else if (self.describe.length == 0) {
                [YHSRRSProgressHUD startError:@"Please describe your product" :1];
            } else {
                if (rs.isLogin == NO) {
                    YHSRLoginVC *loginVC = [[YHSRLoginVC alloc]init];
                    [weakSelf pushViewController:loginVC animated:NO];
                } else {
                    [YHSRRSProgressHUD startHud:@"Is to save" :2];
                    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                        [YHSRRSProgressHUD startSuccess:@"Save success" :1];
                        NSMutableArray *arr = [NSMutableArray array];
                        arr = rs.goodsArr.mutableCopy;
                        if ([weakSelf.titleStr isEqualToString:@"Goods add"]) {
                            NSInteger integer = arr.count;
                            integer ++;
                            NSDictionary *dic = @{
                                @"goodsImg":weakSelf.goodsImg,
                                @"goodsName":weakSelf.goodsName,
                                @"number":weakSelf.number,
                                @"price":weakSelf.price,
                                @"type":weakSelf.type,
                                @"describe":weakSelf.describe,
                                @"idStr":[NSString stringWithFormat:@"%ld",(long)integer],
                                @"isHttp":@(weakSelf.isHttp),
                            };
                            [arr insertObject:dic atIndex:0];
                            rs.goodsArr = arr;
                        } else {
                            [arr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                                if ([obj[@"idStr"] isEqualToString:weakSelf.model.idStr]) {
                                    NSDictionary *dic2 = @{
                                        @"goodsImg":weakSelf.goodsImg,
                                        @"goodsName":weakSelf.goodsName,
                                        @"number":weakSelf.number,
                                        @"price":weakSelf.price,
                                        @"type":weakSelf.type,
                                        @"describe":weakSelf.describe,
                                        @"idStr":weakSelf.model.idStr,
                                        @"isHttp":@(weakSelf.isHttp),
                                    };
                                    [arr replaceObjectAtIndex:idx withObject:dic2];
                                    rs.goodsArr = arr;
                                }
                            }];
                        }
                        [weakSelf goBack];
                    });
                }
            }
        }
    }];
    self.goodsName = self.model.goodsName;
    self.number = self.model.number;
    self.type = self.model.type;
    self.describe = self.model.describe;
    self.goodsImg = self.model.goodsImg;
    self.isHttp = self.model.isHttp;
    if (self.model.price.length == 0) {
        self.price = @"";
    } else {
        self.price = self.model.price;
    }
    if (self.goodsImg.length == 0) {
        [self.photoBtn setImage:[UIImage imageNamed:@"add_img"]];
    } else {
        if (self.model.isHttp == NO) {
            [self.photoBtn setImage:[UIImage imageNamed:self.goodsImg]];
        } else {
            [self.photoBtn setImage:self.goodsImg.wBase64ToImage];
        }
    }
    [self YHSRaddData];
NSNumber * YHSR_solicitor;
if (YHSR_solicitor) {
 YHSR_solicitor = nil;
}
NSDictionary * YHSR_everyone;
if (YHSR_everyone) {
 YHSR_everyone = nil;
}
}
#pragma mark 添加数据
- (void)YHSRaddData
{
    [self.view addSubview:self.tableView];
    [self YHSRsetMasonry];
NSNumber * YHSR_solicitor;
if (YHSR_solicitor) {
 YHSR_solicitor = nil;
}
NSDictionary * YHSR_everyone;
if (YHSR_everyone) {
 YHSR_everyone = nil;
}
}
#pragma mark 设置Masonry
- (void)YHSRsetMasonry
{
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(self.view);
        make.top.equalTo(self.view.mas_top).offset(RSStatusAndNavForHeight);
        make.bottom.equalTo(self.view.mas_bottom).offset(-RSBottomSafeHeight);
    }];
NSNumber * YHSR_solicitor;
if (YHSR_solicitor) {
 YHSR_solicitor = nil;
}
NSDictionary * YHSR_everyone;
if (YHSR_everyone) {
 YHSR_everyone = nil;
}
}
#pragma mark 懒加载初始化
- (UIButton *)photoBtn
{
    if (!_photoBtn) {
        _photoBtn = [[UIButton alloc]init];
        _photoBtn.layer.cornerRadius = 2;
        _photoBtn.layer.masksToBounds = YES;
        WEAKSELF;
        [_photoBtn wAddTouchUpInside:^{
            [self setToUploadPictures:^(UIImage * _Nullable img) {
                [weakSelf.photoBtn setImage:img];
                weakSelf.goodsImg = img.base64String;
                weakSelf.isHttp = YES;
            }];
        }];
    }
    return _photoBtn;
NSNumber * YHSR_solicitor;
if (YHSR_solicitor) {
 YHSR_solicitor = nil;
}
NSDictionary * YHSR_everyone;
if (YHSR_everyone) {
 YHSR_everyone = nil;
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
NSNumber * YHSR_solicitor;
if (YHSR_solicitor) {
 YHSR_solicitor = nil;
}
NSDictionary * YHSR_everyone;
if (YHSR_everyone) {
 YHSR_everyone = nil;
}
}
#pragma mark 点击事件
#pragma mark -----  区头高度 -----
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return YHEIGHT(119);
    } else {
        return 0;
    }
NSNumber * YHSR_solicitor;
if (YHSR_solicitor) {
 YHSR_solicitor = nil;
}
NSDictionary * YHSR_everyone;
if (YHSR_everyone) {
 YHSR_everyone = nil;
}
}
#pragma mark -----  区头视图 -----
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        UIView *view = [[UIView alloc]init];
        [view addSubview:self.photoBtn];
        [self.photoBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.height.mas_equalTo(XWIDTH(98));
            make.left.equalTo(view.mas_left).offset(XWIDTH(18));
            make.top.equalTo(view.mas_top).offset(YHEIGHT(12));
        }];
        return view;
    } else {
        return UIView.new;
    }
NSNumber * YHSR_solicitor;
if (YHSR_solicitor) {
 YHSR_solicitor = nil;
}
NSDictionary * YHSR_everyone;
if (YHSR_everyone) {
 YHSR_everyone = nil;
}
}
#pragma mark -----  区数 -----
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
NSNumber * YHSR_solicitor;
if (YHSR_solicitor) {
 YHSR_solicitor = nil;
}
NSDictionary * YHSR_everyone;
if (YHSR_everyone) {
 YHSR_everyone = nil;
}
}
#pragma mark -----  行数 -----
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 1) {
        return 5;
    } else {
        return 0;
    }
NSNumber * YHSR_solicitor;
if (YHSR_solicitor) {
 YHSR_solicitor = nil;
}
NSDictionary * YHSR_everyone;
if (YHSR_everyone) {
 YHSR_everyone = nil;
}
}
#pragma mark -----  单元格高度 -----
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YHEIGHT(51);
NSNumber * YHSR_solicitor;
if (YHSR_solicitor) {
 YHSR_solicitor = nil;
}
NSDictionary * YHSR_everyone;
if (YHSR_everyone) {
 YHSR_everyone = nil;
}
}
#pragma mark -----  单元格 -----
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 1) {
        static NSString *ID = @"addGoodsID";
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
        if (!cell) {
            cell = [[UITableViewCell alloc]initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:ID];
        }
        if (self.type.length == 0) {
            self.type = @"Please select";
        }
        NSArray *textArr = @[@"Name：",@"Inventory：",@"Price：",[NSString stringWithFormat:@"Type：  %@",self.type],@"Describe："];
        NSArray *placeholderArr = @[@"Please enter",@"Please enter",@"Please enter",@"Please select",@"Please enter"];
        NSArray *textFieldArr = @[NoEmptyStr(self.goodsName),NoEmptyStr(self.number),NoEmptyStr(self.price),NoEmptyStr(self.type),NoEmptyStr(self.describe)];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.textLabel.font = [UIFont fontAdapter:16];
        cell.textLabel.textColor = UIColor.hexString(@"#333333");
        cell.textLabel.text = textArr[indexPath.row];
        UITextField *textField = [[UITextField alloc]initWithFrame:CGRectMake(0, 0, XWIDTH(245), YHEIGHT(51))];
        textField.delegate = self;
        textField.tag = indexPath.row;
        textField.font = [UIFont fontAdapter:16];
        textField.placeholder = placeholderArr[indexPath.row];
        textField.text = textFieldArr[indexPath.row];
        textField.placeholderColor = UIColor.hexString(@"#666666");
        textField.textAlignment = NSTextAlignmentLeft;
        cell.backgroundColor = ThemeColors;
        if (indexPath.row == 3) {
            NSMutableAttributedString *attStr = [[NSMutableAttributedString alloc]initWithString:textArr[indexPath.row]];
            NSRange range = [[attStr string] rangeOfString:@"Please select"];
            [attStr addAttribute:NSForegroundColorAttributeName value:UIColor.hexString(@"#666666") range:range];
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            cell.textLabel.attributedText = attStr;
        } else {
            if (indexPath.row == 1 || indexPath.row == 2) {
                textField.keyboardType = UIKeyboardTypeNumberPad;
            }
            cell.accessoryView = textField;
        }
        return cell;
    } else {
        return UITableViewCell.new;
    }
NSNumber * YHSR_solicitor;
if (YHSR_solicitor) {
 YHSR_solicitor = nil;
}
NSDictionary * YHSR_everyone;
if (YHSR_everyone) {
 YHSR_everyone = nil;
}
}
#pragma mark -----  单元格点击事件 -----
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.view endEditing:YES];
    if (indexPath.section == 1) {
        if (indexPath.row == 3) {
            [BRStringPickerView showPickerWithTitle:nil dataSourceArr:@[@"shelves",@"The shelves"] selectIndex:0 resultBlock:^(BRResultModel * _Nullable resultModel) {
                self.type = resultModel.value;
                [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:(UITableViewRowAnimationNone)];
            }];
        }
    }
NSNumber * YHSR_solicitor;
if (YHSR_solicitor) {
 YHSR_solicitor = nil;
}
NSDictionary * YHSR_everyone;
if (YHSR_everyone) {
 YHSR_everyone = nil;
}
}
- (void)textFieldDidEndEditing:(UITextField *)textField
{
    switch (textField.tag) {
        case 0:
            self.goodsName = textField.text;
            break;
        case 1:
            self.number = textField.text;
            break;
        case 2:
            self.price = textField.text;
            break;
        case 4:
            self.describe = textField.text;
            break;
        default:
            break;
    }
NSNumber * YHSR_solicitor;
if (YHSR_solicitor) {
 YHSR_solicitor = nil;
}
NSDictionary * YHSR_everyone;
if (YHSR_everyone) {
 YHSR_everyone = nil;
}
}
@end
@interface YHSRcontainment : NSObject
@end
@implementation YHSRcontainment
- (NSNumber *)plGetNSNumberWithYHSR_solicitor:(NSNumber *)YHSR_solicitor {
  return YHSR_solicitor;
}
- (NSDictionary *)plGetNSDictionaryWithYHSR_everyone:(NSDictionary *)YHSR_everyone {
  return YHSR_everyone;
}
@end
