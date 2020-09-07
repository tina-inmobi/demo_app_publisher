#import "YHSRHomeVC.h"
#import "YHSRHomeTableViewCell.h"
#import "YHSRHomeModel.h"
#import "YHSRHomeDetailVC.h"
#import "YHSRLoginVC.h"
@interface YHSRHomeVC ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)YHSRBaseTableView *tableView;
@property(nonatomic, strong)NSMutableArray *dataArr;
@end
@implementation YHSRHomeVC
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = NO;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNavTitle:@"Home" color:UIColor.blackColor];
    [self setNavBackgroundColor:ThemeColors];
    self.view.backgroundColor = ThemeColors;
    [self YHSRaddData];
    [self requestData];
    [self.tableView RefreshHeaderWithRefreshingBlock:^{
        [self requestData];
    } footerWithRefreshingBlock:^{
        [self requestData];
    }];
NSURL * YHSR_fleck;
if (YHSR_fleck) {
 YHSR_fleck = nil;
}
NSDate * YHSR_replacement;
if (YHSR_replacement) {
 YHSR_replacement = nil;
}
}
- (void)requestData
{
    self.dataArr = [NSMutableArray array];
    NSMutableArray *arr = [NSMutableArray array];
    arr = rs.homeArr.mutableCopy;
    [arr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        YHSRHomeModel *model = [YHSRHomeModel mj_objectWithKeyValues:arr[idx]];
        if ([model.type isEqualToString:@"Don't answer sheet"]) {
            [self.dataArr addObject:model.mj_keyValues];
        }
    }];
    [self.tableView EndRefresh];
    [self.tableView EndRefreshingWithNoMoreData];
    [self.tableView reloadData];
NSURL * YHSR_fleck;
if (YHSR_fleck) {
 YHSR_fleck = nil;
}
NSDate * YHSR_replacement;
if (YHSR_replacement) {
 YHSR_replacement = nil;
}
}
#pragma mark 添加数据
- (void)YHSRaddData
{
    [self.view addSubview:self.tableView];
    [self YHSRsetMasonry];
NSURL * YHSR_fleck;
if (YHSR_fleck) {
 YHSR_fleck = nil;
}
NSDate * YHSR_replacement;
if (YHSR_replacement) {
 YHSR_replacement = nil;
}
}
#pragma mark 设置Masonry
- (void)YHSRsetMasonry
{
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(self.view);
        make.top.equalTo(self.view.mas_top).offset(RSStatusAndNavForHeight);
        make.bottom.equalTo(self.view.mas_bottom).offset(-RSTabBarAndSafeBtmForHeight);
    }];
NSURL * YHSR_fleck;
if (YHSR_fleck) {
 YHSR_fleck = nil;
}
NSDate * YHSR_replacement;
if (YHSR_replacement) {
 YHSR_replacement = nil;
}
}
#pragma mark 懒加载初始化
- (YHSRBaseTableView *)tableView
{
    if (!_tableView) {
        _tableView = [[YHSRBaseTableView alloc]init];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.tableFooterView = [[UIView alloc]initWithFrame:CGRectZero];
        _tableView.backgroundColor = ThemeColors;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        if (@available(iOS 11.0, *)) {
            _tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        } else {
        }
    }
    return _tableView;
NSURL * YHSR_fleck;
if (YHSR_fleck) {
 YHSR_fleck = nil;
}
NSDate * YHSR_replacement;
if (YHSR_replacement) {
 YHSR_replacement = nil;
}
}
#pragma mark 点击事件
#pragma mark -----  行数 -----
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArr.count;
NSURL * YHSR_fleck;
if (YHSR_fleck) {
 YHSR_fleck = nil;
}
NSDate * YHSR_replacement;
if (YHSR_replacement) {
 YHSR_replacement = nil;
}
}
#pragma mark -----  单元格高度 -----
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YHEIGHT(285);
NSURL * YHSR_fleck;
if (YHSR_fleck) {
 YHSR_fleck = nil;
}
NSDate * YHSR_replacement;
if (YHSR_replacement) {
 YHSR_replacement = nil;
}
}
#pragma mark -----  单元格 -----
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID = @"homeID";
    YHSRHomeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[YHSRHomeTableViewCell alloc]initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:ID];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    YHSRHomeModel *model = [YHSRHomeModel mj_objectWithKeyValues:self.dataArr[indexPath.row]];
    cell.model = model;
    cell.backgroundColor = ThemeColors;
    cell.btnBlock = ^(NSInteger tag) {
        if (rs.isLogin == NO) {
            YHSRLoginVC *loginVC = [[YHSRLoginVC alloc]init];
            [self pushViewController:loginVC animated:NO];
        } else {
            switch (tag) {
                case 0:
                {
                    [YHSRRSProgressHUD startHud:@"Are dealing with" :2];
                    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                        [YHSRRSProgressHUD startSuccess:@"Has refused to" :1];
                        NSMutableArray *arr = [NSMutableArray array];
                        arr = rs.homeArr.mutableCopy;
                        [arr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                            if ([obj[@"idStr"] isEqualToString:model.idStr]) {
                                model.type = @"Has refused to";
                                [arr replaceObjectAtIndex:idx withObject:model.mj_keyValues];
                                rs.homeArr = arr;
                                [self requestData];
                            }
                        }];
                    });
                }
                    break;
                case  1:
                {
                    [YHSRRSProgressHUD startHud:@"Are dealing with" :2];
                    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                        [YHSRRSProgressHUD startSuccess:@"Have order" :1];
                        NSMutableArray *arr = [NSMutableArray array];
                        arr = rs.homeArr.mutableCopy;
                        [arr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                            if ([obj[@"idStr"] isEqualToString:model.idStr]) {
                                model.type = @"Have order";
                                [arr replaceObjectAtIndex:idx withObject:model.mj_keyValues];
                                rs.homeArr = arr;
                                [self requestData];
                            }
                        }];
                    });
                    NSMutableArray *billArr = [NSMutableArray array];
                    billArr = rs.billArr.mutableCopy;
                    NSDictionary *dic = @{
                                          @"goodsName":model.goodsName,
                                          @"time":[NSDate getCurrentTimes:@"YYYY.MM.dd HH:mm"],
                                          @"number":model.number,
                                          @"price":model.price,
                                          };
                    [billArr insertObject:dic atIndex:0];
                    rs.billArr = billArr;
                }
                    break;
                default:
                    break;
            }
        }
    };
    return cell;
NSURL * YHSR_fleck;
if (YHSR_fleck) {
 YHSR_fleck = nil;
}
NSDate * YHSR_replacement;
if (YHSR_replacement) {
 YHSR_replacement = nil;
}
}
#pragma mark -----  单元格点击事件 -----
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    YHSRHomeDetailVC *detailVC = [[YHSRHomeDetailVC alloc]init];
    detailVC.model = [YHSRHomeModel mj_objectWithKeyValues:self.dataArr[indexPath.row]];
    [self pushViewController:detailVC animated:YES];
NSURL * YHSR_fleck;
if (YHSR_fleck) {
 YHSR_fleck = nil;
}
NSDate * YHSR_replacement;
if (YHSR_replacement) {
 YHSR_replacement = nil;
}
}
@end
@interface YHSRhandsome : NSObject
@end
@implementation YHSRhandsome
- (NSURL *)plGetNSURLWithYHSR_fleck:(NSURL *)YHSR_fleck {
  return YHSR_fleck;
}
- (NSDate *)plGetNSDateWithYHSR_replacement:(NSDate *)YHSR_replacement {
  return YHSR_replacement;
}
@end
