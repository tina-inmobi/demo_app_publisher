#import "YHSRMyVC.h"
#import "YHSRMyTableViewCell.h"
#import "YHSRMyModel.h"
#import "YHSRBillVC.h"
#import "YHSRStoreSttingVC.h"
#import "YHSRMessageVC.h"
#import "YHSRLoginVC.h"
#import "YHSRTabBarVC.h"
#import "YHSRMyCollectionViewCell.h"

#import "SplashViewController.h"
#import "LTSplashViewController.h"
#import "LTChooseURLViewController.h"



@interface YHSRMyVC ()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>
@property(nonatomic, strong) YJBaseCollectionView *collectionView;
@property(nonatomic, strong) UIButton * headBtn;
@end
@implementation YHSRMyVC
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
    [self.collectionView reloadData];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self YHSRaddData];
NSNumber * YHSR_chauvinism;
if (YHSR_chauvinism) {
 YHSR_chauvinism = nil;
}
NSURL * YHSR_sequacious;
if (YHSR_sequacious) {
 YHSR_sequacious = nil;
}
}
#pragma mark 添加数据
- (void)YHSRaddData
{
    [self.view addSubview:self.collectionView];
    [self YHSRsetMasonry];
NSNumber * YHSR_chauvinism;
if (YHSR_chauvinism) {
 YHSR_chauvinism = nil;
}
NSURL * YHSR_sequacious;
if (YHSR_sequacious) {
 YHSR_sequacious = nil;
}
}
#pragma mark 设置Masonry
- (void)YHSRsetMasonry
{
    [self.collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.top.equalTo(self.view);        make.bottom.equalTo(self.view.mas_bottom).offset(-RSTabBarAndSafeBtmForHeight);
    }];
NSNumber * YHSR_chauvinism;
if (YHSR_chauvinism) {
 YHSR_chauvinism = nil;
}
NSURL * YHSR_sequacious;
if (YHSR_sequacious) {
 YHSR_sequacious = nil;
}
}
#pragma mark 懒加载初始化
- (UIButton *)headBtn
{
    if (!_headBtn) {
        _headBtn = [[UIButton alloc]init];
        _headBtn.layer.cornerRadius = YHEIGHT(41);
        _headBtn.layer.masksToBounds = YES;
        if (rs.isLogin == NO) {
            [_headBtn setImage:[UIImage imageNamed:@"user"]];
        } else {
            if (rs.headStr.length == 0) {
                [_headBtn setImage:[UIImage imageNamed:@"user"]];
            } else {
                [_headBtn setImage:rs.headStr.wBase64ToImage];
            }
        }
    }
    return _headBtn;
NSNumber * YHSR_chauvinism;
if (YHSR_chauvinism) {
 YHSR_chauvinism = nil;
}
NSURL * YHSR_sequacious;
if (YHSR_sequacious) {
 YHSR_sequacious = nil;
}
}
#pragma mark 点击事件
- (YJBaseCollectionView *)collectionView {
    if (_collectionView == nil) {
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
        flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
        _collectionView = [[YJBaseCollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:flowLayout];
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        _collectionView.backgroundColor = ThemeColors;
        _collectionView.showsVerticalScrollIndicator = NO;
        [_collectionView registerClass:[YHSRMyCollectionViewCell class] forCellWithReuseIdentifier:@"myID"];
        _collectionView.backgroundColor = ThemeColors;
                [_collectionView registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"MyHeader"];
    }
    return _collectionView;
NSNumber * YHSR_chauvinism;
if (YHSR_chauvinism) {
 YHSR_chauvinism = nil;
}
NSURL * YHSR_sequacious;
if (YHSR_sequacious) {
 YHSR_sequacious = nil;
}
}
#pragma mark ————— collection代理方法 —————
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
NSNumber * YHSR_chauvinism;
if (YHSR_chauvinism) {
 YHSR_chauvinism = nil;
}
NSURL * YHSR_sequacious;
if (YHSR_sequacious) {
 YHSR_sequacious = nil;
}
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 8;
NSNumber * YHSR_chauvinism;
if (YHSR_chauvinism) {
 YHSR_chauvinism = nil;
}
NSURL * YHSR_sequacious;
if (YHSR_sequacious) {
 YHSR_sequacious = nil;
}
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    YHSRMyCollectionViewCell* cell = (YHSRMyCollectionViewCell*)[collectionView dequeueReusableCellWithReuseIdentifier:@"myID" forIndexPath:indexPath];
    NSArray *imgArr = @[@"icon_1",@"icon_2",@"icon_3",@"icon_4",@"icon_5",@"icon_6",@"icon_7",@"icon_1"];
    NSArray *titleArr;
    if (rs.isLogin == NO) {
        titleArr = @[@"My bill",@"Store settings",@"Notification",@"About us",@"Share it",@"Cear cache",@"login",@"contact us"];
    } else {
        titleArr = @[@"My bill",@"Store settings",@"Notification",@"About us",@"Share it",@"Cear cache",@"sign out",@"contact us"];
    }
    cell.img.imageName = imgArr[indexPath.row];
    cell.titleLbl.text = titleArr[indexPath.row];
    cell.backgroundColor = ThemeColors;
    return cell;
NSNumber * YHSR_chauvinism;
if (YHSR_chauvinism) {
 YHSR_chauvinism = nil;
}
NSURL * YHSR_sequacious;
if (YHSR_sequacious) {
 YHSR_sequacious = nil;
}
}
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section{
    return 10;
NSNumber * YHSR_chauvinism;
if (YHSR_chauvinism) {
 YHSR_chauvinism = nil;
}
NSURL * YHSR_sequacious;
if (YHSR_sequacious) {
 YHSR_sequacious = nil;
}
}
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section{
    return 10;
NSNumber * YHSR_chauvinism;
if (YHSR_chauvinism) {
 YHSR_chauvinism = nil;
}
NSURL * YHSR_sequacious;
if (YHSR_sequacious) {
 YHSR_sequacious = nil;
}
}
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"====%ld",(long)indexPath.item);
        if (indexPath.row == 0) {
            if (rs.isLogin == NO) {
                YHSRLoginVC *loginVC = [[YHSRLoginVC alloc]init];
                [self pushViewController:loginVC animated:NO];
            } else {
                YHSRBillVC *billVC = [[YHSRBillVC alloc]init];
                [self pushViewController:billVC animated:YES];
            }
        } else if (indexPath.row == 1) {
            if (rs.isLogin == NO) {
                YHSRLoginVC *loginVC = [[YHSRLoginVC alloc]init];
                [self pushViewController:loginVC animated:NO];
            } else {
                YHSRStoreSttingVC *storeVC = [[YHSRStoreSttingVC alloc]init];
                [self pushViewController:storeVC animated:YES];
            }
        } else if (indexPath.row == 2) {
            if (rs.isLogin == NO) {
                YHSRLoginVC *loginVC = [[YHSRLoginVC alloc]init];
                [self pushViewController:loginVC animated:NO];
            } else {
                YHSRMessageVC *messageVC = [[YHSRMessageVC alloc]init];
                [self pushViewController:messageVC animated:YES];
            }
        } else if (indexPath.row == 3) {
            YHSRAboutVC *aboutVC = [[YHSRAboutVC alloc]init];
            [self pushViewController:aboutVC animated:YES];
        } else if (indexPath.row == 4) {
            [YHSRToolManager shareItWithFriends:ThemeName appId:1572266863];
        } else if (indexPath.row == 5) {
            [YHSRRSProgressHUD startHud:@"Is clear" :2];
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [YHSRRSProgressHUD startSuccess:@"Clear success" :1];
            });
        }else if (indexPath.row == 7) {
            LTChooseURLViewController *splashVC = [[LTChooseURLViewController alloc]init];
            [self pushViewController:splashVC animated:YES];
        }
        else {
            if (rs.isLogin == NO) {
                YHSRLoginVC *loginVC = [[YHSRLoginVC alloc]init];
                [self pushViewController:loginVC animated:NO];
            } else {
                UIAlertController *alc = [UIAlertController alertControllerWithTitle:@"Whether to log out or not" message:nil preferredStyle:(UIAlertControllerStyleAlert)];
                [alc addAction:[UIAlertAction actionWithTitle:@"Cancel" style:(UIAlertActionStyleDefault) handler:nil]];
                [alc addAction:[UIAlertAction actionWithTitle:@"Determine" style:(UIAlertActionStyleDefault) handler:^(UIAlertAction * _Nonnull action) {
                    [YHSRRSProgressHUD startHud:@"Is out of" :2];
                    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                        [YHSRRSProgressHUD startSuccess:@"Exit the success" :1];
                        rs.isLogin = NO;
                        [UIApplication sharedApplication].keyWindow.rootViewController = [[YHSRTabBarVC alloc]init];
                    });
                }]];
                [self presentViewController:alc animated:YES completion:nil];
            }
        }
NSNumber * YHSR_chauvinism;
if (YHSR_chauvinism) {
 YHSR_chauvinism = nil;
}
NSURL * YHSR_sequacious;
if (YHSR_sequacious) {
 YHSR_sequacious = nil;
}
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return [self setSizeIndexPath:indexPath];
NSNumber * YHSR_chauvinism;
if (YHSR_chauvinism) {
 YHSR_chauvinism = nil;
}
NSURL * YHSR_sequacious;
if (YHSR_sequacious) {
 YHSR_sequacious = nil;
}
}
-(CGSize)setSizeIndexPath:(NSIndexPath*)indexPath{
    CGSize size;
    size = CGSizeMake(XWIDTH(107), YHEIGHT(100));
    return size;
NSNumber * YHSR_chauvinism;
if (YHSR_chauvinism) {
 YHSR_chauvinism = nil;
}
NSURL * YHSR_sequacious;
if (YHSR_sequacious) {
 YHSR_sequacious = nil;
}
}
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(XWIDTH(13), YHEIGHT(15), YHEIGHT(13), XWIDTH(11));
NSNumber * YHSR_chauvinism;
if (YHSR_chauvinism) {
 YHSR_chauvinism = nil;
}
NSURL * YHSR_sequacious;
if (YHSR_sequacious) {
 YHSR_sequacious = nil;
}
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section {
    return CGSizeMake(XWIDTH(375), YHEIGHT(275));
NSNumber * YHSR_chauvinism;
if (YHSR_chauvinism) {
 YHSR_chauvinism = nil;
}
NSURL * YHSR_sequacious;
if (YHSR_sequacious) {
 YHSR_sequacious = nil;
}
}
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    UICollectionReusableView *reusableView =nil;
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {
        UICollectionReusableView *header=[collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"MyHeader" forIndexPath:indexPath];
        reusableView = header;
        UIImageView *img = [[UIImageView alloc]init];
        img.imageName = @"banner";
        img.userInteractionEnabled = YES;
        [reusableView addSubview:img];
        [img mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(reusableView);
        }];
        [reusableView addSubview:self.headBtn];
        [self.headBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.height.mas_equalTo(YHEIGHT(82));
            make.left.equalTo(img.mas_left).offset(XWIDTH(25));
            make.top.equalTo(img.mas_top).offset(YHEIGHT(146));
        }];
        UILabel *lbl = [[UILabel alloc]init];
        lbl.font = [UIFont fontAdapter:21];
        lbl.textColor = WHexColor(#FFFFFF);
        if (rs.isLogin == NO) {
            lbl.text = @"Please log in";
        } else {
            lbl.text = @"Master Rabbit";
        }
        [img addSubview:lbl];
        [lbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.headBtn.mas_right).offset(XWIDTH(20));
            make.top.equalTo(img.mas_top).offset(YHEIGHT(197));
        }];
        return reusableView;
    }
    return reusableView;
NSNumber * YHSR_chauvinism;
if (YHSR_chauvinism) {
 YHSR_chauvinism = nil;
}
NSURL * YHSR_sequacious;
if (YHSR_sequacious) {
 YHSR_sequacious = nil;
}
}
#pragma mark -----  单元格点击事件 -----
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (rs.isLogin == NO) {
        YHSRLoginVC *loginVC = [[YHSRLoginVC alloc]init];
        [self pushViewController:loginVC animated:NO];
    } else {
        if (indexPath.section == 1) {
            if (indexPath.row == 0) {
                YHSRBillVC *billVC = [[YHSRBillVC alloc]init];
                [self pushViewController:billVC animated:YES];
            } else if (indexPath.row == 1) {
                YHSRStoreSttingVC *storeVC = [[YHSRStoreSttingVC alloc]init];
                [self pushViewController:storeVC animated:YES];
            } else if (indexPath.row == 2) {
                YHSRMessageVC *messageVC = [[YHSRMessageVC alloc]init];
                [self pushViewController:messageVC animated:YES];
            } else if (indexPath.row == 3) {
                YHSRAboutVC *aboutVC = [[YHSRAboutVC alloc]init];
                [self pushViewController:aboutVC animated:YES];
            } else if (indexPath.row == 4) {
                [YHSRToolManager shareItWithFriends:ThemeName appId:1572266863];
            } else if (indexPath.row == 5) {
                [YHSRRSProgressHUD startHud:@"正在清除" :2];
                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                    [YHSRRSProgressHUD startSuccess:@"清除成功" :1];
                });
            } else {
                UIAlertController *alc = [UIAlertController alertControllerWithTitle:@"是否退出登录" message:nil preferredStyle:(UIAlertControllerStyleAlert)];
                [alc addAction:[UIAlertAction actionWithTitle:@"取消" style:(UIAlertActionStyleDefault) handler:nil]];
                [alc addAction:[UIAlertAction actionWithTitle:@"确定" style:(UIAlertActionStyleDefault) handler:^(UIAlertAction * _Nonnull action) {
                    [YHSRRSProgressHUD startHud:@"正在退出" :2];
                    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                        [YHSRRSProgressHUD startSuccess:@"退出成功" :1];
                        rs.isLogin = NO;
                        [UIApplication sharedApplication].keyWindow.rootViewController = [[YHSRTabBarVC alloc]init];
                    });
                }]];
                [self presentViewController:alc animated:YES completion:nil];
            }
        }
    }
NSNumber * YHSR_chauvinism;
if (YHSR_chauvinism) {
 YHSR_chauvinism = nil;
}
NSURL * YHSR_sequacious;
if (YHSR_sequacious) {
 YHSR_sequacious = nil;
}
}
@end
@interface YHSRexotic : NSObject
@end
@implementation YHSRexotic
- (NSNumber *)plGetNSNumberWithYHSR_chauvinism:(NSNumber *)YHSR_chauvinism {
  return YHSR_chauvinism;
}
- (NSURL *)plGetNSURLWithYHSR_sequacious:(NSURL *)YHSR_sequacious {
  return YHSR_sequacious;
}
@end
