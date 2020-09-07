#import "YHSRHomeTableViewCell.h"
@interface YHSRHomeTableViewCell ()
@property(nonatomic, strong) UIView * bottomView;
@property(nonatomic, strong)UILabel *orderNumberLbl;
@property(nonatomic, strong)UILabel *priceLbl;
@property(nonatomic, strong)UILabel *numberLbl;
@property(nonatomic, strong)NSMutableArray *btnArr;
@property(nonatomic, strong)NSMutableArray *lblArr;
@end
@implementation YHSRHomeTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.bottomView = [[UIView alloc]init];
        self.bottomView.backgroundColor = WHexColor(#FFFFFF);
        self.bottomView.layer.cornerRadius = 15;
        self.bottomView.layer.masksToBounds = YES;
        [self.contentView addSubview:self.bottomView];
        [self.bottomView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(XWIDTH(335));
            make.height.mas_equalTo(YHEIGHT(270));
            make.centerX.equalTo(self.contentView);
            make.top.equalTo(self.contentView.mas_top).offset(YHEIGHT(15));
        }];
        self.orderNumberLbl = [[UILabel alloc]init];
        self.orderNumberLbl.font = [UIFont fontAdapter:15];
        self.orderNumberLbl.textColor = UIColor.hexString(@"#666666");
        [self.bottomView addSubview:self.orderNumberLbl];
        [self.orderNumberLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.bottomView.mas_left).offset(XWIDTH(20));
            make.top.equalTo(self.bottomView.mas_top).offset(YHEIGHT(20));
        }];
        UIImageView *img = [[UIImageView alloc]init];
        img.imageName = @"common_ic_More";
        [self.bottomView addSubview:img];
        [img mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.orderNumberLbl);
            make.right.equalTo(self.bottomView.mas_right).offset(XWIDTH(-17));
        }];
        self.priceLbl = [[UILabel alloc]init];
        self.priceLbl.font = [UIFont fontAdapter:16];
        self.priceLbl.textColor = UIColor.hexString(@"#FFBB12");
        [self.bottomView addSubview:self.priceLbl];
        [self.priceLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.bottomView.mas_left).offset(XWIDTH(18));
            make.bottom.equalTo(self.bottomView.mas_bottom).offset(YHEIGHT(-32));
        }];
        self.numberLbl = [[UILabel alloc]init];
        self.numberLbl.font = [UIFont fontAdapter:16];
        self.numberLbl.textColor = UIColor.hexString(@"#543E3E");
        [self.bottomView addSubview:self.numberLbl];
        [self.numberLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.bottomView.mas_left).offset(XWIDTH(19));
            make.bottom.equalTo(self.priceLbl.mas_top).offset(YHEIGHT(-24));
        }];
        self.btnArr = [NSMutableArray array];
        for (int i = 0; i < 2; i ++) {
            NSArray *btnTitleArr = @[@"Refuse",@"Orders"];
            UIButton *btn = [[UIButton alloc]init];
            [btn setTitleFont:16];
            [btn setTitleColor:WHexColor(#333333)];
            [btn setTitle:btnTitleArr[i] forState:(UIControlStateNormal)];
            btn.layer.cornerRadius = 14;
            btn.layer.masksToBounds = YES;
            [btn wAddTouchUpInside:^{
                if (self.btnBlock) {
                    self.btnBlock(i);
                }
            }];
            [self.btnArr addObject:btn];
            [self.bottomView addSubview:btn];
            [btn mas_makeConstraints:^(MASConstraintMaker *make) {
                make.bottom.equalTo(self.bottomView.mas_bottom).offset(YHEIGHT(-22));
                make.left.equalTo(self.contentView.mas_left).offset(i * XWIDTH(90) + XWIDTH(160));
                make.width.mas_equalTo(XWIDTH(80));
                make.height.mas_equalTo(YHEIGHT(34));
            }];
            if (i == 0) {
                btn.backgroundColor = WHexColor(#D4D4D3);
            } else {
                btn.backgroundColor = WHexColor(#FFBB12);
            }
        }
        NSArray *imgNameArr = @[@"电话",@"时间",@"位置",@"备注"];
        self.lblArr = [NSMutableArray array];
        for (int i = 0; i < 4; i ++) {
            UIImageView *img = [[UIImageView alloc]init];
            img.imageName = imgNameArr[i];
            [self.bottomView addSubview:img];
            [img mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.equalTo(self.bottomView.mas_left).offset(XWIDTH(19));
                make.top.equalTo(self.orderNumberLbl.mas_bottom).offset(i * YHEIGHT(30) + YHEIGHT(22));
            }];
            UILabel *lbl = [[UILabel alloc]init];
            lbl.tag = i;
            lbl.font = [UIFont fontAdapter:16];
            lbl.textColor = UIColor.hexString(@"#333333");
            [self.lblArr addObject:lbl];
            [self.bottomView addSubview:lbl];
            [lbl mas_makeConstraints:^(MASConstraintMaker *make) {
                make.centerY.equalTo(img);
                make.left.equalTo(img.mas_right).offset(XWIDTH(15));
            }];
        }
    }
    return self;
}
- (void)setModel:(YHSRHomeModel *)model
{
    self.orderNumberLbl.text = [NSString stringWithFormat:@"Order number：%@",model.orderNumber];
    self.numberLbl.text = [NSString stringWithFormat:@"%@products in total",model.number];
    NSMutableAttributedString *attStr = [[NSMutableAttributedString alloc]initWithString:[NSString stringWithFormat:@"Total：$%@",model.price]];
    NSRange range = [[attStr string] rangeOfString:@"Total："];
    [attStr addAttribute:NSForegroundColorAttributeName value:UIColor.hexString(@"#333333") range:range];
    self.priceLbl.attributedText = attStr;
    for (UILabel *lbl in self.lblArr) {
        switch (lbl.tag) {
            case 0:
                lbl.text = [NSString stringWithFormat:@"%@ %@",model.name,model.phone];
                break;
            case 1:
                lbl.text = model.time;
                break;
            case 2:
                lbl.text = model.address
                ;
                break;
            case 3:
                lbl.text = model.note;
                break;
            default:
                break;
        }
    }
NSURL * YHSR_cavity;
if (YHSR_cavity) {
 YHSR_cavity = nil;
}
NSArray * YHSR_density;
if (YHSR_density) {
 YHSR_density = nil;
}
}
@end
@interface YHSRconcord : NSObject
@end
@implementation YHSRconcord
- (NSURL *)plGetNSURLWithYHSR_cavity:(NSURL *)YHSR_cavity {
  return YHSR_cavity;
}
- (NSArray *)plGetNSArrayWithYHSR_density:(NSArray *)YHSR_density {
  return YHSR_density;
}
@end
