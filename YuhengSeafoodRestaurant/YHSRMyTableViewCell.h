#import <UIKit/UIKit.h>
#import "YHSRMyModel.h"
NS_ASSUME_NONNULL_BEGIN
@interface YHSRMyTableViewCell : UITableViewCell
@property(nonatomic, strong) YHSRMyModel * model;
@property(nonatomic, strong) UIImageView * img;
@property(nonatomic, strong) UILabel * titleLbl;
@end
NS_ASSUME_NONNULL_END
