#import "YHSRBillVC.h"
#import "YHSRBillTableViewCell.h"
#import "YHSRBillModel.h"
@interface YHSRBillVC ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong) YHSRBaseTableView * tableView;
@property(nonatomic, strong) NSMutableArray * dataArr;
@end
@implementation YHSRBillVC
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = NO;
    [self requestData];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    WEAKSELF;
    [self setNavTitle:@"My bill" color:UIColor.blackColor];
    [self setNavBackgroundColor:ThemeColors];
    [self setNavLeftItemWithImage:[UIImage imageNamed:LeftImg] actionBlock:^{
        [weakSelf goBack];
    }];
    [self YHSRaddData];
    [self requestData];
    [self.tableView RefreshHeaderWithRefreshingBlock:^{
        [self requestData];
    } footerWithRefreshingBlock:^{
        [self requestData];
    }];
NSDictionary * YHSR_invincible;
if (YHSR_invincible) {
 YHSR_invincible = nil;
}
NSNumber * YHSR_proof;
if (YHSR_proof) {
 YHSR_proof = nil;
}
}
- (void)requestData
{
    self.dataArr = [NSMutableArray array];
    self.dataArr = rs.billArr.mutableCopy;
    [self.tableView EndRefresh];
    [self.tableView EndRefreshingWithNoMoreData];
    [self.tableView reloadData];
NSDictionary * YHSR_invincible;
if (YHSR_invincible) {
 YHSR_invincible = nil;
}
NSNumber * YHSR_proof;
if (YHSR_proof) {
 YHSR_proof = nil;
}
}
#pragma mark 添加数据
- (void)YHSRaddData
{
    [self.view addSubview:self.tableView];
    [self YHSRsetMasonry];
NSDictionary * YHSR_invincible;
if (YHSR_invincible) {
 YHSR_invincible = nil;
}
NSNumber * YHSR_proof;
if (YHSR_proof) {
 YHSR_proof = nil;
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
NSDictionary * YHSR_invincible;
if (YHSR_invincible) {
 YHSR_invincible = nil;
}
NSNumber * YHSR_proof;
if (YHSR_proof) {
 YHSR_proof = nil;
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
NSDictionary * YHSR_invincible;
if (YHSR_invincible) {
 YHSR_invincible = nil;
}
NSNumber * YHSR_proof;
if (YHSR_proof) {
 YHSR_proof = nil;
}
}
#pragma mark 点击事件
#pragma mark -----  行数 -----
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArr.count;
NSDictionary * YHSR_invincible;
if (YHSR_invincible) {
 YHSR_invincible = nil;
}
NSNumber * YHSR_proof;
if (YHSR_proof) {
 YHSR_proof = nil;
}
}
#pragma mark -----  单元格高度 -----
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YHEIGHT(88);
NSDictionary * YHSR_invincible;
if (YHSR_invincible) {
 YHSR_invincible = nil;
}
NSNumber * YHSR_proof;
if (YHSR_proof) {
 YHSR_proof = nil;
}
}
#pragma mark -----  单元格 -----
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID = @"billID";
    YHSRBillTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[YHSRBillTableViewCell alloc]initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:ID];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    YHSRBillModel *model = [YHSRBillModel mj_objectWithKeyValues:self.dataArr[indexPath.row]];
    cell.model = model;
    cell.backgroundColor = ThemeColors;
    return cell;
NSDictionary * YHSR_invincible;
if (YHSR_invincible) {
 YHSR_invincible = nil;
}
NSNumber * YHSR_proof;
if (YHSR_proof) {
 YHSR_proof = nil;
}
}
#pragma mark -----  单元格点击事件 -----
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
NSDictionary * YHSR_invincible;
if (YHSR_invincible) {
 YHSR_invincible = nil;
}
NSNumber * YHSR_proof;
if (YHSR_proof) {
 YHSR_proof = nil;
}
}
@end
@interface YHSRflake : NSObject
@end
@implementation YHSRflake
- (NSDictionary *)plGetNSDictionaryWithYHSR_invincible:(NSDictionary *)YHSR_invincible {
  return YHSR_invincible;
}
- (NSNumber *)plGetNSNumberWithYHSR_proof:(NSNumber *)YHSR_proof {
  return YHSR_proof;
}
@end
