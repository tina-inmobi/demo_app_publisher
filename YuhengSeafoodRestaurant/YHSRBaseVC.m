#import "YHSRBaseVC.h"
@interface YHSRBaseVC ()<UIImagePickerControllerDelegate,UIGestureRecognizerDelegate,UINavigationControllerDelegate>
@property(nonatomic, strong)UIImagePickerController *picker;
@property(nonatomic, copy)ImgBlock imgBlock;
@property(nonatomic, copy)TimeBlock timeBlock;
@property(nonatomic, copy)AddressBlock addressBlock;
@end
@implementation YHSRBaseVC
- (void)viewDidLoad {
    [super viewDidLoad];
   UIImage *img = [UIImage imageNamed:@""];
   [self.navigationController.navigationBar setBackgroundImage:img  forBarMetrics:UIBarMetricsDefault];
   self.navigationController.navigationBar.shadowImage = [[UIImage alloc] init];
   self.navigationController.navigationBar.translucent = NO;
    self.extendedLayoutIncludesOpaqueBars = YES;
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.view.backgroundColor = ThemeColors;
}
- (void)setViewBackgroundColor:(UIColor *)color
{
    self.view.backgroundColor = color;
NSTimer * YHSR_deviant;
if (YHSR_deviant) {
 YHSR_deviant = nil;
}
NSString * YHSR_magenta;
if (YHSR_magenta) {
 YHSR_magenta = nil;
}
}
- (UIImage*)convertViewToImage:(UIView*)v{
    CGSize s = v.bounds.size;
    UIGraphicsBeginImageContextWithOptions(s,YES, [UIScreen mainScreen].scale);
    [v.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
NSTimer * YHSR_deviant;
if (YHSR_deviant) {
 YHSR_deviant = nil;
}
NSString * YHSR_magenta;
if (YHSR_magenta) {
 YHSR_magenta = nil;
}
}
- (void)setBarTintColorWithLeftColor:(UIColor *)leftColor rightColor:(UIColor *)rightColor
{
    [self.navigationController.navigationBar setBackgroundImage:[self convertViewToImage:[self gradientWithLeftColor:leftColor rightColor:rightColor width:SCREEN_WIDTH height:44]] forBarMetrics:UIBarMetricsDefault];
NSTimer * YHSR_deviant;
if (YHSR_deviant) {
 YHSR_deviant = nil;
}
NSString * YHSR_magenta;
if (YHSR_magenta) {
 YHSR_magenta = nil;
}
}
- (void)setBarTintColor:(UIColor *)color
{
    self.navigationController.navigationBar.barTintColor = color;
NSTimer * YHSR_deviant;
if (YHSR_deviant) {
 YHSR_deviant = nil;
}
NSString * YHSR_magenta;
if (YHSR_magenta) {
 YHSR_magenta = nil;
}
}
- (void)setTitle:(NSString *)titleName color:(UIColor *)color
{
    self.navigationItem.title = titleName;
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:color}];
NSTimer * YHSR_deviant;
if (YHSR_deviant) {
 YHSR_deviant = nil;
}
NSString * YHSR_magenta;
if (YHSR_magenta) {
 YHSR_magenta = nil;
}
}
- (void)setTitle:(NSString *)titleName
{
    self.navigationItem.title = titleName;
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:UIColor.blackColor}];
NSTimer * YHSR_deviant;
if (YHSR_deviant) {
 YHSR_deviant = nil;
}
NSString * YHSR_magenta;
if (YHSR_magenta) {
 YHSR_magenta = nil;
}
}
- (void)setLeftBtn
{
    UIButton *btn = [[UIButton alloc]init];
    [btn setFrame:CGRectMake(0, 0, 30, 30)];
    [btn setImage:[UIImage imageNamed:@"common_nav_back_white"] forState:(UIControlStateNormal)];
    [btn addTarget:self action:@selector(touchLeftBtn) forControlEvents:(UIControlEventTouchUpInside)];
    UIBarButtonItem *barBtn = [[UIBarButtonItem alloc]initWithCustomView:btn];
    self.navigationItem.leftBarButtonItem = barBtn;
NSTimer * YHSR_deviant;
if (YHSR_deviant) {
 YHSR_deviant = nil;
}
NSString * YHSR_magenta;
if (YHSR_magenta) {
 YHSR_magenta = nil;
}
}
- (UIButton *)setLeftBtnWithImg:(NSString *)img
{
    UIButton *btn = [[UIButton alloc]init];
    [btn setFrame:CGRectMake(0, 0, 30, 30)];
    [btn setImage:[UIImage imageNamed:img] forState:(UIControlStateNormal)];
    UIBarButtonItem *barBtn = [[UIBarButtonItem alloc]initWithCustomView:btn];
    self.navigationItem.leftBarButtonItem = barBtn;
    return btn;
NSTimer * YHSR_deviant;
if (YHSR_deviant) {
 YHSR_deviant = nil;
}
NSString * YHSR_magenta;
if (YHSR_magenta) {
 YHSR_magenta = nil;
}
}
- (UIButton *)setLeftBtnWithImg:(NSString *)img Title:(NSString *)title
{
    UIButton *btn = [[UIButton alloc]init];
    [btn setFrame:CGRectMake(0, 0, 30, 30)];
    [btn setImage:[UIImage imageNamed:img] forState:(UIControlStateNormal)];
    [btn setTitle:title forState:(UIControlStateNormal)];
    [btn setTitleColor:UIColor.blackColor forState:(UIControlStateNormal)];
    UIBarButtonItem *barBtn = [[UIBarButtonItem alloc]initWithCustomView:btn];
    self.navigationItem.leftBarButtonItem = barBtn;
    return btn;
NSTimer * YHSR_deviant;
if (YHSR_deviant) {
 YHSR_deviant = nil;
}
NSString * YHSR_magenta;
if (YHSR_magenta) {
 YHSR_magenta = nil;
}
}
- (UIButton *)setLeftBtnWithTitle:(NSString *)title Color:(UIColor *)color
{
    UIButton *btn = [[UIButton alloc]init];
    [btn setFrame:CGRectMake(0, 0, 30, 30)];
    [btn setTitle:title forState:(UIControlStateNormal)];
    [btn setTitleColor:color forState:(UIControlStateNormal)];
    UIBarButtonItem *barBtn = [[UIBarButtonItem alloc]initWithCustomView:btn];
    self.navigationItem.leftBarButtonItem = barBtn;
    return btn;
NSTimer * YHSR_deviant;
if (YHSR_deviant) {
 YHSR_deviant = nil;
}
NSString * YHSR_magenta;
if (YHSR_magenta) {
 YHSR_magenta = nil;
}
}
- (UIButton *)setLeftBtnWithTitle:(NSString *)title
{
    UIButton *btn = [[UIButton alloc]init];
    [btn setFrame:CGRectMake(0, 0, 30, 30)];
    [btn setTitle:title forState:(UIControlStateNormal)];
    [btn setTitleColor:UIColor.blackColor forState:(UIControlStateNormal)];
    UIBarButtonItem *barBtn = [[UIBarButtonItem alloc]initWithCustomView:btn];
    self.navigationItem.leftBarButtonItem = barBtn;
    return btn;
NSTimer * YHSR_deviant;
if (YHSR_deviant) {
 YHSR_deviant = nil;
}
NSString * YHSR_magenta;
if (YHSR_magenta) {
 YHSR_magenta = nil;
}
}
- (UIButton *)setRightBtnWithImg:(NSString *)img
{
    UIButton *btn = [[UIButton alloc]init];
    [btn setFrame:CGRectMake(0, 0, 30, 30)];
    [btn setImage:[UIImage imageNamed:img] forState:(UIControlStateNormal)];
    UIBarButtonItem *barBtn = [[UIBarButtonItem alloc]initWithCustomView:btn];
    self.navigationItem.rightBarButtonItem = barBtn;
    return btn;
NSTimer * YHSR_deviant;
if (YHSR_deviant) {
 YHSR_deviant = nil;
}
NSString * YHSR_magenta;
if (YHSR_magenta) {
 YHSR_magenta = nil;
}
}
- (UIButton *)setRightBtnWithStr:(NSString *)str
{
    UIButton *btn = [[UIButton alloc]init];
    [btn setFrame:CGRectMake(0, 0, 30, 30)];
    [btn setTitle:str forState:(UIControlStateNormal)];
    [btn setTitleColor:UIColor.blackColor forState:(UIControlStateNormal)];
    UIBarButtonItem *barBtn = [[UIBarButtonItem alloc]initWithCustomView:btn];
    self.navigationItem.rightBarButtonItem = barBtn;
    return btn;
NSTimer * YHSR_deviant;
if (YHSR_deviant) {
 YHSR_deviant = nil;
}
NSString * YHSR_magenta;
if (YHSR_magenta) {
 YHSR_magenta = nil;
}
}
- (UIButton *)setRightBtnWithStr:(NSString *)str Color:(UIColor *)color
{
    UIButton *btn = [[UIButton alloc]init];
    [btn setFrame:CGRectMake(0, 0, 30, 30)];
    [btn setTitle:str forState:(UIControlStateNormal)];
    [btn setTitleColor:color forState:(UIControlStateNormal)];
    UIBarButtonItem *barBtn = [[UIBarButtonItem alloc]initWithCustomView:btn];
    self.navigationItem.rightBarButtonItem = barBtn;
    return btn;
NSTimer * YHSR_deviant;
if (YHSR_deviant) {
 YHSR_deviant = nil;
}
NSString * YHSR_magenta;
if (YHSR_magenta) {
 YHSR_magenta = nil;
}
}
- (void)setToUploadPictures:(ImgBlock)imgBlock
{
    self.imgBlock = imgBlock;
    __block typeof (self) weak_self = self;
    _picker = [[UIImagePickerController alloc] init];
    _picker.delegate = self;
    _picker.allowsEditing = YES;
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Please select the image"
                                                                             message:nil
                                                                      preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction* cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * action) {}];
    UIAlertAction* fromPhotoAction = [UIAlertAction actionWithTitle:@"Select from album" style:UIAlertActionStyleDefault                                                                 handler:^(UIAlertAction * action) {
        weak_self.picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        [weak_self presentViewController:weak_self.picker animated:YES completion:nil];
        NSLog(@"从相册选择");
    }];
    UIAlertAction* fromCameraAction = [UIAlertAction actionWithTitle:@"Camera" style:UIAlertActionStyleDefault                                                             handler:^(UIAlertAction * action) {
        NSLog(@"相机");
        UIImagePickerControllerSourceType sourceType = UIImagePickerControllerSourceTypeCamera;
        if(! [UIImagePickerController isSourceTypeAvailable:sourceType]){
            NSString *tips = @"Camera unavailable";
            UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Unable to use camera" message:tips preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
                NSLog(@"取消");
            }];
            UIAlertAction *otherAction = [UIAlertAction actionWithTitle:@"Determine" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
                NSLog(@"确定");
            }];
            [alertController addAction:cancelAction];
            [alertController addAction:otherAction];
            [self presentViewController:alertController animated:YES completion:nil];
            return;
        }
        self->_picker.sourceType = UIImagePickerControllerSourceTypeCamera;
        [self presentViewController:self->_picker animated:YES completion:nil];
        if (![self getCameraRecordPermisson]) {
            NSString *tips = @"Please allow access to the camera in Settings - Privacy - Camera on the iPhone";
            UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Unable to use camera" message:tips preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
                NSLog(@"取消");
            }];
            UIAlertAction *otherAction = [UIAlertAction actionWithTitle:@"Determine" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
                NSLog(@"确定");
            }];
            [alertController addAction:cancelAction];
            [alertController addAction:otherAction];
            [self presentViewController:alertController animated:YES completion:nil];
        }
    }];
    [alertController addAction:cancelAction];
    [alertController addAction:fromCameraAction];
    [alertController addAction:fromPhotoAction];
    [self presentViewController:alertController animated:YES completion:nil];
NSTimer * YHSR_deviant;
if (YHSR_deviant) {
 YHSR_deviant = nil;
}
NSString * YHSR_magenta;
if (YHSR_magenta) {
 YHSR_magenta = nil;
}
}
#pragma mark UIImagePickerControllerDelegate
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    UIImage *orignalImage = [info objectForKey:UIImagePickerControllerOriginalImage];
    UIImage *editedImage = [info objectForKey:UIImagePickerControllerEditedImage];
    if (picker.sourceType == UIImagePickerControllerSourceTypeCamera && orignalImage) {
        UIImageWriteToSavedPhotosAlbum(orignalImage, self, nil, NULL);
    }
    [picker dismissViewControllerAnimated:YES completion:^{
        if (editedImage) {
            if (self.imgBlock) {
                self.imgBlock(editedImage);
            }
        }
    }];
NSTimer * YHSR_deviant;
if (YHSR_deviant) {
 YHSR_deviant = nil;
}
NSString * YHSR_magenta;
if (YHSR_magenta) {
 YHSR_magenta = nil;
}
}
- (BOOL)getCameraRecordPermisson
{
    NSString * mediaType = AVMediaTypeVideo;
    AVAuthorizationStatus  authorizationStatus = [AVCaptureDevice authorizationStatusForMediaType:mediaType];
    if (authorizationStatus == AVAuthorizationStatusRestricted|| authorizationStatus == AVAuthorizationStatusDenied)
    {
        return NO;
    }
    return YES;
NSTimer * YHSR_deviant;
if (YHSR_deviant) {
 YHSR_deviant = nil;
}
NSString * YHSR_magenta;
if (YHSR_magenta) {
 YHSR_magenta = nil;
}
}
- (BOOL)IsIdentityCard:(NSString *)IDCardNumber
{
    if (IDCardNumber.length <= 0) {
        return NO;
    }
    NSString *regex2 = @"^(\\d{14}|\\d{17})(\\d|[xX])$";
    NSPredicate *identityCardPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex2];
    return [identityCardPredicate evaluateWithObject:IDCardNumber];
NSTimer * YHSR_deviant;
if (YHSR_deviant) {
 YHSR_deviant = nil;
}
NSString * YHSR_magenta;
if (YHSR_magenta) {
 YHSR_magenta = nil;
}
}
- (void)codeWithButton:(UIButton *)codeBtn
{
        [YHSRRSProgressHUD startSuccess:@"发送成功":1];
        __block int timeout=59; 
        dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
        dispatch_source_t _timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0,queue);
        dispatch_source_set_timer(_timer,dispatch_walltime(NULL, 0),1.0*NSEC_PER_SEC, 0); 
        dispatch_source_set_event_handler(_timer, ^{
            if(timeout<=0){ 
                dispatch_source_cancel(_timer);
                dispatch_async(dispatch_get_main_queue(), ^{
                    [codeBtn setTitle:@"获取验证码" forState:UIControlStateNormal];
                    codeBtn.userInteractionEnabled = YES;
                });
            }else{
                int seconds = timeout % 60;
                NSString *strTime = [NSString stringWithFormat:@"%d", seconds];
                dispatch_async(dispatch_get_main_queue(), ^{
                    [codeBtn setTitle:[NSString stringWithFormat:@"%@s",strTime] forState:UIControlStateNormal];
                    codeBtn.userInteractionEnabled = NO;
                });
                timeout--;
            }
        });
        dispatch_resume(_timer);
NSTimer * YHSR_deviant;
if (YHSR_deviant) {
 YHSR_deviant = nil;
}
NSString * YHSR_magenta;
if (YHSR_magenta) {
 YHSR_magenta = nil;
}
}
- (void)codeWithPhone:(NSString *)phoneStr Button:(UIButton *)codeBtn
{
    if (phoneStr.length == 0) {
        [YHSRRSProgressHUD startError:@"The cell phone number cannot be empty":1];
    }else if (phoneStr.length != 11){
        [YHSRRSProgressHUD startError:@"Please enter the correct cell phone number":1];
    }else{
        [YHSRRSProgressHUD startSuccess:@"Send a success":1];
        __block int timeout=59; 
        dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
        dispatch_source_t _timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0,queue);
        dispatch_source_set_timer(_timer,dispatch_walltime(NULL, 0),1.0*NSEC_PER_SEC, 0); 
        dispatch_source_set_event_handler(_timer, ^{
            if(timeout<=0){ 
                dispatch_source_cancel(_timer);
                dispatch_async(dispatch_get_main_queue(), ^{
                    [codeBtn setTitle:@"Get code" forState:UIControlStateNormal];
                    codeBtn.userInteractionEnabled = YES;
                });
            }else{
                int seconds = timeout % 60;
                NSString *strTime = [NSString stringWithFormat:@"%d", seconds];
                dispatch_async(dispatch_get_main_queue(), ^{
                    [codeBtn setTitle:[NSString stringWithFormat:@"%@s",strTime] forState:UIControlStateNormal];
                    codeBtn.userInteractionEnabled = NO;
                });
                timeout--;
            }
        });
        dispatch_resume(_timer);
    }
NSTimer * YHSR_deviant;
if (YHSR_deviant) {
 YHSR_deviant = nil;
}
NSString * YHSR_magenta;
if (YHSR_magenta) {
 YHSR_magenta = nil;
}
}
- (void)QRCodeScanVC:(UIViewController *)scanVC {
    AVCaptureDevice *device = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    if (device) {
        AVAuthorizationStatus status = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
        switch (status) {
            case AVAuthorizationStatusNotDetermined: {
                [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
                    if (granted) {
                        dispatch_sync(dispatch_get_main_queue(), ^{
                            [self pushViewController:scanVC animated:YES];
                        });
                        NSLog(@"用户第一次同意了访问相机权限 - - %@", [NSThread currentThread]);
                    } else {
                        NSLog(@"用户第一次拒绝了访问相机权限 - - %@", [NSThread currentThread]);
                    }
                }];
                break;
            }
            case AVAuthorizationStatusAuthorized: {
                 [self pushViewController:scanVC animated:YES];
                break;
            }
            case AVAuthorizationStatusDenied: {
                UIAlertController *alertC = [UIAlertController alertControllerWithTitle:@"Warm prompt" message:@"Please go to -> [Settings - privacy - camera - SGQRCodeExample] and turn on the access switch" preferredStyle:(UIAlertControllerStyleAlert)];
                UIAlertAction *alertA = [UIAlertAction actionWithTitle:@"Determine" style:(UIAlertActionStyleDefault) handler:^(UIAlertAction * _Nonnull action) {
                }];
                [alertC addAction:alertA];
                [self presentViewController:alertC animated:YES completion:nil];
                break;
            }
            case AVAuthorizationStatusRestricted: {
                NSLog(@"因为系统原因, 无法访问相册");
                break;
            }
            default:
                break;
        }
        return;
    }
    UIAlertController *alertC = [UIAlertController alertControllerWithTitle:@"Warm prompt" message:@"Your camera was not detected" preferredStyle:(UIAlertControllerStyleAlert)];
    UIAlertAction *alertA = [UIAlertAction actionWithTitle:@"Determine" style:(UIAlertActionStyleDefault) handler:^(UIAlertAction * _Nonnull action) {
    }];
    [alertC addAction:alertA];
    [self presentViewController:alertC animated:YES completion:nil];
NSTimer * YHSR_deviant;
if (YHSR_deviant) {
 YHSR_deviant = nil;
}
NSString * YHSR_magenta;
if (YHSR_magenta) {
 YHSR_magenta = nil;
}
}
- (UIViewController *)currentController {
    UIViewController * presentedVC = [[UIApplication sharedApplication].delegate window].rootViewController;
    if ([presentedVC isKindOfClass:[UINavigationController class]]) {
        presentedVC = presentedVC.presentedViewController;
    }
    else if ([presentedVC isKindOfClass:[UITabBarController class]]) {
        UITabBarController* tabBarController = (UITabBarController* )presentedVC;
        presentedVC = tabBarController.selectedViewController;
    }
    else {
        NSUInteger childViewControllerCount = presentedVC.childViewControllers.count;
        if (childViewControllerCount > 0) {
            presentedVC = presentedVC.childViewControllers.lastObject;
            return presentedVC;
        } else {
            return presentedVC;
        }
    }
    return presentedVC;
NSTimer * YHSR_deviant;
if (YHSR_deviant) {
 YHSR_deviant = nil;
}
NSString * YHSR_magenta;
if (YHSR_magenta) {
 YHSR_magenta = nil;
}
}
#pragma mark   touchLeftBtn——————返回点击事件
- (void)touchLeftBtn
{
    [self.navigationController popViewControllerAnimated:YES];
NSTimer * YHSR_deviant;
if (YHSR_deviant) {
 YHSR_deviant = nil;
}
NSString * YHSR_magenta;
if (YHSR_magenta) {
 YHSR_magenta = nil;
}
}
- (id)gradientWithImgLeftColor:(UIColor *)leftColor rightColor:(UIColor *)rightColor width:(NSInteger)width height:(NSInteger)height
{
    UIView * view = [[UIView alloc]initWithFrame:CGRectMake(0,0, width,height)];
    CAGradientLayer * gradientLayer = [CAGradientLayer layer];
    gradientLayer.startPoint = CGPointMake(0,0);
    gradientLayer.endPoint = CGPointMake(1.5,0);
    gradientLayer.frame = view.frame;
    gradientLayer.colors = [NSArray arrayWithObjects:(id)leftColor.CGColor,(id)rightColor.CGColor,nil];
    [view.layer insertSublayer:gradientLayer atIndex:0];
    return [self convertViewToImage:view];
NSTimer * YHSR_deviant;
if (YHSR_deviant) {
 YHSR_deviant = nil;
}
NSString * YHSR_magenta;
if (YHSR_magenta) {
 YHSR_magenta = nil;
}
}
- (void)callPhone:(NSString *)phone
{
NSTimer * YHSR_deviant;
if (YHSR_deviant) {
 YHSR_deviant = nil;
}
NSString * YHSR_magenta;
if (YHSR_magenta) {
 YHSR_magenta = nil;
}
}
@end
@interface YHSRcognomen : NSObject
@end
@implementation YHSRcognomen
- (NSTimer *)plGetNSTimerWithYHSR_deviant:(NSTimer *)YHSR_deviant {
  return YHSR_deviant;
}
- (NSString *)plGetNSStringWithYHSR_magenta:(NSString *)YHSR_magenta {
  return YHSR_magenta;
}
@end
