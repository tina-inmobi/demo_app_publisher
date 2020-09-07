#import "YHSRBillTableViewCell.h"
@interface YHSRBillTableViewCell ()
@property(nonatomic, strong) UILabel * goodsNameLbl;
@property(nonatomic, strong) UILabel * timeLbl;
@property(nonatomic, strong) UILabel * numberLbl;
@property(nonatomic, strong) UILabel * priceLbl;
@property(nonatomic, strong) UIView * bottomView;
@end
@implementation YHSRBillTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.goodsNameLbl = [[UILabel alloc]init];
        self.goodsNameLbl.font = [UIFont fontAdapter:16];
        self.goodsNameLbl.textColor = UIColor.hexString(@"#333333");
        [self.contentView addSubview:self.goodsNameLbl];
        [self.goodsNameLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.contentView.mas_left).offset(XWIDTH(18));
            make.top.equalTo(self.contentView.mas_top).offset(YHEIGHT(18));
        }];
        self.timeLbl = [[UILabel alloc]init];
        self.timeLbl.font = [UIFont fontAdapter:14];
        self.timeLbl.textColor = UIColor.blackColor;
        [self.contentView addSubview:self.timeLbl];
        [self.timeLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.contentView.mas_left).offset(XWIDTH(18));
            make.top.equalTo(self.goodsNameLbl.mas_bottom).offset(YHEIGHT(16));
        }];
        self.numberLbl = [[UILabel alloc]init];
        self.numberLbl.font = [UIFont fontAdapter:16];
        self.numberLbl.textColor = UIColor.hexString(@"#333333");
        [self.contentView addSubview:self.numberLbl];
        [self.numberLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(self.contentView.mas_right).offset(XWIDTH(-18));
            make.top.equalTo(self.contentView.mas_top).offset(YHEIGHT(18));
        }];
        self.priceLbl = [[UILabel alloc]init];
        self.priceLbl.font = [UIFont fontAdapter:16];
        self.priceLbl.textColor = UIColor.hexString(@"#FFCC00");
        [self.contentView addSubview:self.priceLbl];
        [self.priceLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(self.contentView.mas_right).offset(XWIDTH(-18));
            make.top.equalTo(self.numberLbl.mas_bottom).offset(YHEIGHT(14));
        }];
        self.bottomView = [[UIView alloc]init];
        self.bottomView.backgroundColor = UIColor.lightGrayColor;
        [self.contentView addSubview:self.bottomView];
        [self.bottomView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.bottom.equalTo(self.contentView);
            make.height.mas_equalTo(YHEIGHT(0.5));
        }];
    }
    return self;
}
- (void)setModel:(YHSRBillModel *)model
{
    self.goodsNameLbl.text = model.goodsName;
    self.timeLbl.text = model.time;
    self.numberLbl.text = [NSString stringWithFormat:@"%@",model.number];
    self.priceLbl.text = [NSString stringWithFormat:@"$%@",model.price];
NSArray * YHSR_deception;
if (YHSR_deception) {
 YHSR_deception = nil;
}
NSNumber * YHSR_galaxy;
if (YHSR_galaxy) {
 YHSR_galaxy = nil;
}
}
@end
@interface YHSRweather : NSObject
@end
@implementation YHSRweather
- (NSArray *)plGetNSArrayWithYHSR_deception:(NSArray *)YHSR_deception {
  return YHSR_deception;
}
- (NSNumber *)plGetNSNumberWithYHSR_galaxy:(NSNumber *)YHSR_galaxy {
  return YHSR_galaxy;
}
@end
