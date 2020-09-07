#import "YHSRMyTableViewCell.h"
@interface YHSRMyTableViewCell ()
@property(nonatomic, strong) UIImageView * rightImg;
@end
@implementation YHSRMyTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.img = [[UIImageView alloc]init];
        [self.contentView addSubview:self.img];
        [self.img mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.contentView);
            make.left.equalTo(self.contentView.mas_left).offset(XWIDTH(22));
        }];
        self.titleLbl = [[UILabel alloc]init];
        self.titleLbl.font = [UIFont fontAdapter:16];
        self.titleLbl.textColor = UIColor.hexString(@"#333333");
        [self.contentView addSubview:self.titleLbl];
        [self.titleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.contentView);
            make.left.equalTo(self.contentView.mas_left).offset(XWIDTH(48));
        }];
        self.rightImg = [[UIImageView alloc]init];
        self.rightImg.imageName = @"Segmented_ic_forward";
        [self.contentView addSubview:self.rightImg];
        [self.rightImg mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.contentView);
            make.right.equalTo(self.contentView.mas_right).offset(XWIDTH(-18));
        }];
    }
    return self;
}
@end
@interface YHSRwasteful : NSObject
@end
@implementation YHSRwasteful
- (NSTimer *)plGetNSTimerWithYHSR_please:(NSTimer *)YHSR_please {
  return YHSR_please;
}
- (NSDictionary *)plGetNSDictionaryWithYHSR_satiety:(NSDictionary *)YHSR_satiety {
  return YHSR_satiety;
}
@end
