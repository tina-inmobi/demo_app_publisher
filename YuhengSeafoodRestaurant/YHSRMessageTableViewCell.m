#import "YHSRMessageTableViewCell.h"
@interface YHSRMessageTableViewCell ()
@property(nonatomic, strong) UIView * bottomView;
@end
@implementation YHSRMessageTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.titleLbl = [[UILabel alloc]init];
        self.titleLbl.font = [UIFont fontAdapter:18];
        self.titleLbl.textColor = UIColor.hexString(@"#333333");
        [self.contentView addSubview:self.titleLbl];
        [self.titleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.contentView.mas_left).offset(XWIDTH(18));
            make.top.equalTo(self.contentView.mas_top).offset(YHEIGHT(18));
        }];
        self.timeLbl = [[UILabel alloc]init];
        self.timeLbl.font = [UIFont fontAdapter:14];
        self.timeLbl.textColor = UIColor.blackColor;
        [self.contentView addSubview:self.timeLbl];
        [self.timeLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(self.contentView.mas_right).offset(XWIDTH(-18));
            make.top.equalTo(self.contentView.mas_top).offset(YHEIGHT(18));
        }];
        self.contentLbl = [[UILabel alloc]init];
        self.contentLbl.font = [UIFont fontAdapter:16];
        self.contentLbl.textColor = UIColor.blackColor;
        [self.contentView addSubview:self.contentLbl];
        [self.contentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.contentView.mas_left).offset(XWIDTH(18));
            make.bottom.equalTo(self.contentView.mas_bottom).offset(YHEIGHT(-18));
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
- (void)setModel:(YHSRMessageModel *)model
{
    self.titleLbl.text = model.titleStr;
    self.timeLbl.text = model.time;
    self.contentLbl.text = model.contentStr;
NSURL * YHSR_genus;
if (YHSR_genus) {
 YHSR_genus = nil;
}
NSURL * YHSR_preview;
if (YHSR_preview) {
 YHSR_preview = nil;
}
}
@end
@interface YHSRskill : NSObject
@end
@implementation YHSRskill
- (NSURL *)plGetNSURLWithYHSR_genus:(NSURL *)YHSR_genus {
  return YHSR_genus;
}
- (NSURL *)plGetNSURLWithYHSR_preview:(NSURL *)YHSR_preview {
  return YHSR_preview;
}
@end
