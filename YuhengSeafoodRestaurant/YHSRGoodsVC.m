#import "YHSRGoodsVC.h"
#import "YHSRGoodsModel.h"
#import "YHSRAddGoodsVC.h"
#import "YHSRLoginVC.h"
#import "YHSRGoodsTableViewCell.h"
@interface YHSRGoodsVC ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong) YHSRBaseTableView * tableView;
@property(nonatomic, strong)NSMutableArray *dataArr;
@end
@implementation YHSRGoodsVC
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self requestData];
    self.navigationController.navigationBarHidden = NO;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    WEAKSELF;
    [self setNavTitle:@"Goods" color:UIColor.blackColor];
    [self setNavBackgroundColor:ThemeColors];
    [self setNavRightItemWithImage:[UIImage imageNamed:@"添加"] actionBlock:^{
        YHSRAddGoodsVC *addVC = [[YHSRAddGoodsVC alloc]init];
        addVC.titleStr = @"Goods add";
        [weakSelf pushViewController:addVC animated:YES];
    }];
    [self YHSRaddData];
    [self requestData];
    [self.tableView RefreshHeaderWithRefreshingBlock:^{
        [self requestData];
    } footerWithRefreshingBlock:^{
        [self requestData];
    }];
NSTimer * YHSR_spring;
if (YHSR_spring) {
 YHSR_spring = nil;
}
NSDictionary * YHSR_mawkish;
if (YHSR_mawkish) {
 YHSR_mawkish = nil;
}
}
- (void)requestData
{
    self.dataArr = [NSMutableArray array];
    if (rs.isLogin == YES) {
        self.dataArr = rs.goodsArr.mutableCopy;
    }
    [self.tableView EndRefresh];
    [self.tableView EndRefreshingWithNoMoreData];
    self.tableView.emptyTitle = [[NSMutableAttributedString alloc]initWithString:@"Please log in"];
    [self.tableView reloadData];
NSTimer * YHSR_spring;
if (YHSR_spring) {
 YHSR_spring = nil;
}
NSDictionary * YHSR_mawkish;
if (YHSR_mawkish) {
 YHSR_mawkish = nil;
}
}
#pragma mark 添加数据
- (void)YHSRaddData
{
    [self.view addSubview:self.tableView];
    [self YHSRsetMasonry];
NSTimer * YHSR_spring;
if (YHSR_spring) {
 YHSR_spring = nil;
}
NSDictionary * YHSR_mawkish;
if (YHSR_mawkish) {
 YHSR_mawkish = nil;
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
NSTimer * YHSR_spring;
if (YHSR_spring) {
 YHSR_spring = nil;
}
NSDictionary * YHSR_mawkish;
if (YHSR_mawkish) {
 YHSR_mawkish = nil;
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
        _tableView.showsVerticalScrollIndicator = NO;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        if (@available(iOS 11.0, *)) {
            _tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        } else {
        }
    }
    return _tableView;
NSTimer * YHSR_spring;
if (YHSR_spring) {
 YHSR_spring = nil;
}
NSDictionary * YHSR_mawkish;
if (YHSR_mawkish) {
 YHSR_mawkish = nil;
}
}
#pragma mark 点击事件
#pragma mark -----  行数 -----
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArr.count;
NSTimer * YHSR_spring;
if (YHSR_spring) {
 YHSR_spring = nil;
}
NSDictionary * YHSR_mawkish;
if (YHSR_mawkish) {
 YHSR_mawkish = nil;
}
}
#pragma mark -----  单元格高度 -----
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YHEIGHT(266);
NSTimer * YHSR_spring;
if (YHSR_spring) {
 YHSR_spring = nil;
}
NSDictionary * YHSR_mawkish;
if (YHSR_mawkish) {
 YHSR_mawkish = nil;
}
}
#pragma mark -----  单元格 -----
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID = @"goodsID";
    YHSRGoodsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[YHSRGoodsTableViewCell alloc]initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:ID];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    YHSRGoodsModel *model = [YHSRGoodsModel mj_objectWithKeyValues:self.dataArr[indexPath.row]];
    cell.model = model;
    cell.backgroundColor = ThemeColors;
    return cell;
NSTimer * YHSR_spring;
if (YHSR_spring) {
 YHSR_spring = nil;
}
NSDictionary * YHSR_mawkish;
if (YHSR_mawkish) {
 YHSR_mawkish = nil;
}
}
#pragma mark -----  单元格点击事件 -----
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    YHSRAddGoodsVC *addVC = [[YHSRAddGoodsVC alloc]init];
    addVC.titleStr = @"Commodities editor";
    addVC.model = [YHSRGoodsModel mj_objectWithKeyValues:self.dataArr[indexPath.row]];
    [self pushViewController:addVC animated:YES];
NSTimer * YHSR_spring;
if (YHSR_spring) {
 YHSR_spring = nil;
}
NSDictionary * YHSR_mawkish;
if (YHSR_mawkish) {
 YHSR_mawkish = nil;
}
}
@end
@interface YHSRporous : NSObject
@end
@implementation YHSRporous
- (NSTimer *)plGetNSTimerWithYHSR_spring:(NSTimer *)YHSR_spring {
  return YHSR_spring;
}
- (NSDictionary *)plGetNSDictionaryWithYHSR_mawkish:(NSDictionary *)YHSR_mawkish {
  return YHSR_mawkish;
}
@end
