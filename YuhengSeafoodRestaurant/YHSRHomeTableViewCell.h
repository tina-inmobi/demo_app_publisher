#import <UIKit/UIKit.h>
#import "YHSRHomeModel.h"
NS_ASSUME_NONNULL_BEGIN
typedef void(^BtnBlock)(NSInteger tag);
@interface YHSRHomeTableViewCell : UITableViewCell
@property(nonatomic, strong)YHSRHomeModel *model;
@property(nonatomic, copy)BtnBlock btnBlock;
@end
NS_ASSUME_NONNULL_END
