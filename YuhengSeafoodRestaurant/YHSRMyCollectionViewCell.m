#import "YHSRMyCollectionViewCell.h"
@interface YHSRMyCollectionViewCell ()
@property(nonatomic, strong) UIView * bottomView;
@end
@implementation YHSRMyCollectionViewCell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.bottomView = [[UIView alloc]init];
        self.bottomView.backgroundColor = UIColor.whiteColor;
        self.bottomView.layer.cornerRadius = 15;
        self.bottomView.layer.masksToBounds = YES;
        [self.contentView addSubview:self.bottomView];
        [self.bottomView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(XWIDTH(107));
            make.height.mas_equalTo(YHEIGHT(100));
            make.centerX.centerY.equalTo(self.contentView);
        }];
        self.img = [[UIImageView alloc]init];
        self.img.userInteractionEnabled = YES;
        [self.bottomView addSubview:self.img];
        [self.img mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.bottomView);
            make.top.equalTo(self.bottomView.mas_top).offset(YHEIGHT(27));
        }];
        self.titleLbl = [[UILabel alloc]init];
        self.titleLbl.font = [UIFont fontAdapter:17];
        self.titleLbl.textColor = WHexColor(#333333);
        [self.bottomView addSubview:self.titleLbl];
        [self.titleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.bottomView);
            make.top.equalTo(self.img.mas_bottom).offset(YHEIGHT(12));
        }];
    }
    return self;
}
- (void)setModel:(YHSRMyModel *)model
{
    self.img.imageName = model.img;
    self.titleLbl.text = model.titleStr;
NSArray * YHSR_indisputable;
if (YHSR_indisputable) {
 YHSR_indisputable = nil;
}
NSDictionary * YHSR_cynosure;
if (YHSR_cynosure) {
 YHSR_cynosure = nil;
}
}
@end
@interface YHSRwoman : NSObject
@end
@implementation YHSRwoman
- (NSArray *)plGetNSArrayWithYHSR_indisputable:(NSArray *)YHSR_indisputable {
  return YHSR_indisputable;
}
- (NSDictionary *)plGetNSDictionaryWithYHSR_cynosure:(NSDictionary *)YHSR_cynosure {
  return YHSR_cynosure;
}
@end
