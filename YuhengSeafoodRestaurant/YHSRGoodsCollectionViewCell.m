#import "YHSRGoodsCollectionViewCell.h"
@interface YHSRGoodsCollectionViewCell ()
@property(nonatomic, strong)UIView *bottomView;
@property(nonatomic, strong)UIImageView *goodsImg;
@property(nonatomic, strong)UILabel *goodsNameLbl;
@property(nonatomic, strong)UILabel *priceLbl;
@property(nonatomic, strong)UIImageView *editorImg;
@end
@implementation YHSRGoodsCollectionViewCell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.bottomView = [[UIView alloc]init];
        self.bottomView.backgroundColor = UIColor.whiteColor;
        self.bottomView.layer.cornerRadius = 2;
        self.bottomView.layer.masksToBounds = YES;
        [self.contentView addSubview:self.bottomView];
        [self.bottomView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self.contentView);
        }];
        self.goodsImg = [[UIImageView alloc]init];
        [self.bottomView addSubview:self.goodsImg];
        [self.goodsImg mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.bottomView.mas_left).offset(XWIDTH(5));
            make.top.equalTo(self.bottomView.mas_top).offset(YHEIGHT(5));
            make.right.equalTo(self.bottomView.mas_right).offset(XWIDTH(-5));
            make.height.mas_equalTo(YHEIGHT(158));
        }];
        self.goodsNameLbl = [[UILabel alloc]init];
        self.goodsNameLbl.font = [UIFont fontAdapter:16];
        self.goodsNameLbl.textColor = UIColor.hexString(@"#333333");
        [self.contentView addSubview:self.goodsNameLbl];
        [self.goodsNameLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.contentView.mas_left).offset(XWIDTH(5));
            make.top.equalTo(self.goodsImg.mas_bottom).offset(YHEIGHT(12));
        }];
        self.priceLbl = [[UILabel alloc]init];
        self.priceLbl.textColor = UIColor.hexString(@"#FFCC00");
        self.priceLbl.font = [UIFont fontAdapter:16];
        [self.contentView addSubview:self.priceLbl];
        [self.priceLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.contentView.mas_left).offset(XWIDTH(5));
            make.bottom.equalTo(self.contentView.mas_bottom).offset(YHEIGHT(-7));
        }];
        self.editorImg = [[UIImageView alloc]init];
        self.editorImg.imageName = @"common_ic_01";
        [self.contentView addSubview:self.editorImg];
        [self.editorImg mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(self.contentView.mas_right).offset(XWIDTH(-6));
            make.bottom.equalTo(self.contentView.mas_bottom).offset(YHEIGHT(-8));
        }];
    }
    return self;
}
- (void)setModel:(YHSRGoodsModel *)model
{
    if (model.isHttp == NO) {
        self.goodsImg.imageName = model.goodsImg;
    } else {
        self.goodsImg.image = model.goodsImg.wBase64ToImage;
    }
    self.priceLbl.text = [NSString stringWithFormat:@"¥%@",model.price];
    self.goodsNameLbl.text = model.goodsName;
NSTimer * YHSR_cathedral;
if (YHSR_cathedral) {
 YHSR_cathedral = nil;
}
NSTimer * YHSR_prance;
if (YHSR_prance) {
 YHSR_prance = nil;
}
}
@end
@interface YHSRcontinue : NSObject
@end
@implementation YHSRcontinue
- (NSTimer *)plGetNSTimerWithYHSR_cathedral:(NSTimer *)YHSR_cathedral {
  return YHSR_cathedral;
}
- (NSTimer *)plGetNSTimerWithYHSR_prance:(NSTimer *)YHSR_prance {
  return YHSR_prance;
}
@end
