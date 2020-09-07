#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN
@interface YHSRUserDefaultsManager : NSObject
+ (instancetype)shareManager;
@property(nonatomic, assign)BOOL isLogin;
@property(nonatomic, copy)NSString *headStr;
@property(nonatomic, strong)NSMutableArray *homeArr;
@property(nonatomic, strong)NSMutableArray *goodsArr;
@property(nonatomic, copy) NSString * name;
@property(nonatomic, copy) NSString * address;
@property(nonatomic, copy) NSString * phone;
@property(nonatomic, strong) NSMutableArray * billArr;
@property(nonatomic, strong) NSMutableArray * messageArr;
@end
NS_ASSUME_NONNULL_END
