#import "YHSRHomeDetailVC.h"
@interface YHSRHomeDetailVC ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)YHSRBaseTableView *tableView;
@end
@implementation YHSRHomeDetailVC
- (void)viewDidLoad {
    [super viewDidLoad];
    WEAKSELF;
    [self setNavTitle:@"Details" color:UIColor.blackColor];
    [self setNavLeftItemWithImage:[UIImage imageNamed:LeftImg] actionBlock:^{
        [weakSelf goBack];
    }];
    [self YHSRaddData];
}
#pragma mark 添加数据
- (void)YHSRaddData
{
    [self.view addSubview:self.tableView];
    [self YHSRsetMasonry];
NSArray * YHSR_veneer;
if (YHSR_veneer) {
 YHSR_veneer = nil;
}
NSString * YHSR_court;
if (YHSR_court) {
 YHSR_court = nil;
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
NSArray * YHSR_veneer;
if (YHSR_veneer) {
 YHSR_veneer = nil;
}
NSString * YHSR_court;
if (YHSR_court) {
 YHSR_court = nil;
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
        if (@available(iOS 11.0, *)) {
            _tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        } else {
        }
    }
    return _tableView;
NSArray * YHSR_veneer;
if (YHSR_veneer) {
 YHSR_veneer = nil;
}
NSString * YHSR_court;
if (YHSR_court) {
 YHSR_court = nil;
}
}
#pragma mark 点击事件
#pragma mark -----  行数 -----
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 8;
NSArray * YHSR_veneer;
if (YHSR_veneer) {
 YHSR_veneer = nil;
}
NSString * YHSR_court;
if (YHSR_court) {
 YHSR_court = nil;
}
}
#pragma mark -----  单元格高度 -----
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YHEIGHT(51);
NSArray * YHSR_veneer;
if (YHSR_veneer) {
 YHSR_veneer = nil;
}
NSString * YHSR_court;
if (YHSR_court) {
 YHSR_court = nil;
}
}
#pragma mark -----  单元格 -----
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID = @"homeDetailID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:ID];
    }
    NSArray *textArr = @[@"Customer：",@"Phone：",@"Address：",@"Note：",@"Number：",@"Total：",@"OrderNumber：",@"Goods name："];
    NSArray *detailArr = @[self.model.name,self.model.phone,self.model.address,self.model.note,self.model.number,[NSString stringWithFormat:@"$%@",self.model.price],self.model.orderNumber,self.model.goodsName];
    NSMutableAttributedString *attStr = [[NSMutableAttributedString alloc]initWithString:[NSString stringWithFormat:@"%@%@",textArr[indexPath.row],detailArr[indexPath.row]]];
    NSRange range = [[attStr string] rangeOfString:textArr[indexPath.row]];
    [attStr addAttribute:NSForegroundColorAttributeName value:UIColor.hexString(@"#333333") range:range];
    cell.textLabel.textColor = UIColor.hexString(@"#666666");
    cell.textLabel.font = [UIFont fontAdapter:16];
    cell.textLabel.attributedText = attStr;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.backgroundColor = ThemeColors;
    return cell;
NSArray * YHSR_veneer;
if (YHSR_veneer) {
 YHSR_veneer = nil;
}
NSString * YHSR_court;
if (YHSR_court) {
 YHSR_court = nil;
}
}
@end
@interface YHSRdeaden : NSObject
@end
@implementation YHSRdeaden
- (NSArray *)plGetNSArrayWithYHSR_veneer:(NSArray *)YHSR_veneer {
  return YHSR_veneer;
}
- (NSString *)plGetNSStringWithYHSR_court:(NSString *)YHSR_court {
  return YHSR_court;
}
@end
