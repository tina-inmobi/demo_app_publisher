#import "YHSRMessageVC.h"
#import "YHSRMessageModel.h"
#import "YHSRMessageTableViewCell.h"
@interface YHSRMessageVC ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong) YHSRBaseTableView * tableView;
@property(nonatomic, strong) NSMutableArray * dataArr;
@end
@implementation YHSRMessageVC
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = NO;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    WEAKSELF;
    [self setNavTitle:@"Message center" color:UIColor.blackColor];
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
NSDate * YHSR_salty;
if (YHSR_salty) {
 YHSR_salty = nil;
}
NSTimer * YHSR_concurrence;
if (YHSR_concurrence) {
 YHSR_concurrence = nil;
}
}
- (void)requestData
{
    self.dataArr = [NSMutableArray array];
    self.dataArr = rs.messageArr.mutableCopy;
    [self.tableView EndRefresh];
    [self.tableView EndRefreshingWithNoMoreData];
    [self.tableView reloadData];
NSDate * YHSR_salty;
if (YHSR_salty) {
 YHSR_salty = nil;
}
NSTimer * YHSR_concurrence;
if (YHSR_concurrence) {
 YHSR_concurrence = nil;
}
}
#pragma mark 添加数据
- (void)YHSRaddData
{
    [self.view addSubview:self.tableView];
    [self YHSRsetMasonry];
NSDate * YHSR_salty;
if (YHSR_salty) {
 YHSR_salty = nil;
}
NSTimer * YHSR_concurrence;
if (YHSR_concurrence) {
 YHSR_concurrence = nil;
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
NSDate * YHSR_salty;
if (YHSR_salty) {
 YHSR_salty = nil;
}
NSTimer * YHSR_concurrence;
if (YHSR_concurrence) {
 YHSR_concurrence = nil;
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
NSDate * YHSR_salty;
if (YHSR_salty) {
 YHSR_salty = nil;
}
NSTimer * YHSR_concurrence;
if (YHSR_concurrence) {
 YHSR_concurrence = nil;
}
}
#pragma mark 点击事件
#pragma mark -----  行数 -----
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArr.count;
NSDate * YHSR_salty;
if (YHSR_salty) {
 YHSR_salty = nil;
}
NSTimer * YHSR_concurrence;
if (YHSR_concurrence) {
 YHSR_concurrence = nil;
}
}
#pragma mark -----  单元格高度 -----
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YHEIGHT(85);
NSDate * YHSR_salty;
if (YHSR_salty) {
 YHSR_salty = nil;
}
NSTimer * YHSR_concurrence;
if (YHSR_concurrence) {
 YHSR_concurrence = nil;
}
}
#pragma mark -----  单元格 -----
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID = @"messageID";
    YHSRMessageTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[YHSRMessageTableViewCell alloc]initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:ID];
    }
    cell.selectionStyle = UITableViewCellSeparatorStyleNone;
    YHSRMessageModel *model = [YHSRMessageModel mj_objectWithKeyValues:self.dataArr[indexPath.row]];
    cell.model = model;
    cell.backgroundColor = ThemeColors;
    return cell;
NSDate * YHSR_salty;
if (YHSR_salty) {
 YHSR_salty = nil;
}
NSTimer * YHSR_concurrence;
if (YHSR_concurrence) {
 YHSR_concurrence = nil;
}
}
@end
@interface YHSRimprovised : NSObject
@end
@implementation YHSRimprovised
- (NSDate *)plGetNSDateWithYHSR_salty:(NSDate *)YHSR_salty {
  return YHSR_salty;
}
- (NSTimer *)plGetNSTimerWithYHSR_concurrence:(NSTimer *)YHSR_concurrence {
  return YHSR_concurrence;
}
@end
