#import <UIKit/UIKit.h>
typedef void(^TimeBlock)(NSString * _Nullable timeStr);
typedef void(^ImgBlock)(UIImage * _Nullable img);
typedef void(^AddressBlock)(NSString * _Nonnull addressStr);
NS_ASSUME_NONNULL_BEGIN
@interface YHSRBaseVC : UIViewController
- (void)setViewBackgroundColor:(UIColor *)color;
- (void)setBarTintColorWithLeftColor:(UIColor *)leftColor rightColor:(UIColor *)rightColor;
- (void)setBarTintColor:(UIColor *)color;
- (UIButton *)setLeftBtnWithImg:(NSString *)img;
- (UIButton *)setRightBtnWithImg:(NSString *)img;
- (UIButton *)setRightBtnWithStr:(NSString *)str;
- (void)setTitle:(NSString *)titleName;
- (void)setToUploadPictures:(ImgBlock)imgBlock;
- (UIViewController *)currentController;
- (void)codeWithPhone:(NSString *)phoneStr Button:(UIButton *)codeBtn;
- (void)chooseAddress:(AddressBlock)addressBlock;
- (void)codeWithButton:(UIButton *)codeBtn;
- (void)setTitle:(NSString *)titleName color:(UIColor *)color;
- (void)setLeftBtn;
- (UIButton *)setLeftBtnWithImg:(NSString *)img Title:(NSString *)title;
- (UIButton *)setRightBtnWithStr:(NSString *)str Color:(UIColor *)color;
- (UIButton *)setLeftBtnWithTitle:(NSString *)title Color:(UIColor *)color;
- (UIButton *)setLeftBtnWithTitle:(NSString *)title;
- (void)QRCodeScanVC:(UIViewController *)scanVC;
- (void)callPhone:(NSString *)phone;
- (id)gradientWithLeftColor:(UIColor *)leftColor rightColor:(UIColor *)rightColor width:(NSInteger)width height:(NSInteger)height;
@end
NS_ASSUME_NONNULL_END
