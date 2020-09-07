#import <UIKit/UIKit.h>
#import "YHSRMessageModel.h"
NS_ASSUME_NONNULL_BEGIN
@interface YHSRMessageTableViewCell : UITableViewCell
@property(nonatomic, strong) YHSRMessageModel * model;
@property(nonatomic, strong) UILabel * titleLbl;
@property(nonatomic, strong) UILabel * timeLbl;
@property(nonatomic, strong) UILabel * contentLbl;
@end
NS_ASSUME_NONNULL_END
