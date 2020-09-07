#import "YHSRGoodsTableViewCell.h"
@interface YHSRGoodsTableViewCell ()
@property(nonatomic, strong) UIImageView * bottomImg;
@property(nonatomic, strong) UIView * bottomView;
@property(nonatomic, strong) UILabel * nameLbl;
@property(nonatomic, strong) UILabel * jiageLbl;
@property(nonatomic, strong) UIImageView * img;
@end
@implementation YHSRGoodsTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.bottomImg = [[UIImageView alloc]init];
        self.bottomImg.layer.cornerRadius = 8;
        self.bottomImg.layer.masksToBounds = YES;
        [self.contentView addSubview:self.bottomImg];
        [self.bottomImg mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(XWIDTH(335));
            make.height.mas_equalTo(YHEIGHT(200));
            make.centerX.equalTo(self.contentView);
            make.top.equalTo(self.contentView.mas_top).offset(YHEIGHT(18));
        }];
        self.bottomView = [[UIView alloc]init];
        self.bottomView.backgroundColor = WHexColor(#FFFFFF);
        self.bottomView.layer.cornerRadius = 15;
        self.bottomView.layer.masksToBounds = YES;
        [self.contentView addSubview:self.bottomView];
        [self.bottomView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(XWIDTH(275));
            make.height.mas_equalTo(YHEIGHT(80));
            make.centerX.equalTo(self.contentView);
            make.top.equalTo(self.bottomImg.mas_bottom).offset(YHEIGHT(-40));
        }];
        self.nameLbl = [[UILabel alloc]init];
        self.nameLbl.font = [UIFont fontAdapter:21];
        [self.bottomView addSubview:self.nameLbl];
        [self.nameLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.bottomView.mas_left).offset(XWIDTH(24));
            make.top.equalTo(self.bottomView.mas_top).offset(YHEIGHT(15));
        }];
        self.jiageLbl = [[UILabel alloc]init];
        self.jiageLbl.font = [UIFont fontAdapter:19];
        self.jiageLbl.textColor = WHexColor(#FFBB12);
        [self.bottomView addSubview:self.jiageLbl];
        [self.jiageLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.bottomView.mas_left).offset(XWIDTH(24));
            make.bottom.equalTo(self.bottomView.mas_bottom).offset(YHEIGHT(-15));
        }];
        self.img = [[UIImageView alloc]init];
        self.img.imageName = @"ios2x_icon_edit";
        [self.bottomView addSubview:self.img];
        [self.img mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.bottomView);
            make.right.equalTo(self.bottomView.mas_right).offset(XWIDTH(-29));
        }];
    }
    return self;
}
- (void)setModel:(YHSRGoodsModel *)model
{
    if (model.isHttp == NO) {
        self.bottomImg.imageName = model.goodsImg;
    } else {
        self.bottomImg.image = model.goodsImg.wBase64ToImage;
    }
    self.nameLbl.text = model.goodsName;
    self.jiageLbl.text = [NSString stringWithFormat:@"$%@",model.price];
NSTimer * YHSR_bequeath;
if (YHSR_bequeath) {
 YHSR_bequeath = nil;
}
NSDictionary * YHSR_shark;
if (YHSR_shark) {
 YHSR_shark = nil;
}
}
@end
@interface YHSRboredom : NSObject
@end
@implementation YHSRboredom
- (NSTimer *)plGetNSTimerWithYHSR_bequeath:(NSTimer *)YHSR_bequeath {
  return YHSR_bequeath;
}
- (NSDictionary *)plGetNSDictionaryWithYHSR_shark:(NSDictionary *)YHSR_shark {
  return YHSR_shark;
}
@end
