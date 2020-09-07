#import "YHSRBaseTableView.h"
#import <DZNEmptyDataSet/UIScrollView+EmptyDataSet.h>
#import <MJRefresh/MJRefresh.h>
static const char emptyTitleKey;
static const char emptyImageKey;
static const char emptyBackgroundColorKey;
static const char emptyDescriptionKey;
typedef enum : NSUInteger {
    EmptyTypeNomer = 0,
    EmptyTypeButton,
} EmptyTypeState;
@interface YHSRBaseTableView ()<DZNEmptyDataSetSource,DZNEmptyDataSetDelegate>
@property(nonatomic,assign) EmptyTypeState state;
@property (assign, nonatomic) BOOL isEmptyPage;
@property (strong, nonatomic) NSString *emptyMsg;
@property (assign, nonatomic) BOOL isFirstShow;
@property(nonatomic,assign) BOOL isEmptyData;
@property(nonatomic,assign) BOOL isEmptyButton;
@property(nonatomic,assign) BOOL isAutoHeight;
@property(nonatomic,assign) NSInteger numberRow;
@property(nonatomic,assign) NSInteger numberSection;
@property(nonatomic,copy) NSArray * cellNameArray;
@property (strong, nonatomic) void(^clickBadNetWorkPage)(void);
@end
@implementation YHSRBaseTableView
- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style {
    if (self = [super initWithFrame:frame style:style]) {
        if (@available(iOS 11.0, *)) {
            self.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        } else {
        }
        self.emptyMsg = @"暂无数据";
        self.emptyDataSetSource = self;
        self.emptyDataSetDelegate = self;
        self.backgroundColor = UIColor.hexString(@"#F2F2F2");
        self.isFirstShow = YES;
        [self ShowNoSourcePageWithIsEmptyMsg:self.emptyMsg];
    }
    return self;
}
- (void)RefreshHeaderWithRefreshingBlock:(void(^)(void))headerBlock footerWithRefreshingBlock:(void(^)(void))footBlock {
    if (headerBlock) {
        if (self.mj_header) {
            self.mj_header = nil;
        }
        self.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
            headerBlock();
        }];
    }
    if (footBlock) {
        if (self.mj_footer) {
            self.mj_footer = nil;
        }
        if (self.dataSoureBaseArray.count == 0  && self.dataSoureBaseArray != nil) {
            self.mj_footer = [MJRefreshBackNormalFooter footerWithRefreshingBlock:^{
                footBlock();
            }];
        } else {
            self.mj_footer = [MJRefreshAutoNormalFooter footerWithRefreshingBlock:^{
                footBlock();
            }];
        }
    }
NSURL * YHSR_entertain;
if (YHSR_entertain) {
 YHSR_entertain = nil;
}
NSString * YHSR_strip;
if (YHSR_strip) {
 YHSR_strip = nil;
}
}
- (void)RefreshHeaderWithRefreshingBlock:(void(^)(void))headerBlock {
    if (headerBlock) {
        if (self.mj_header) {
            self.mj_header = nil;
        }
        self.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
            headerBlock();
        }];
    }
NSURL * YHSR_entertain;
if (YHSR_entertain) {
 YHSR_entertain = nil;
}
NSString * YHSR_strip;
if (YHSR_strip) {
 YHSR_strip = nil;
}
}
- (void)RefreshFooterWithRefreshingBlock:(void (^)(void))footBlock {
    if (self.mj_footer) {
        self.mj_footer = nil;
    }
    if (footBlock) {
        if (self.dataSoureBaseArray.count == 0 && self.dataSoureBaseArray != nil) {
            self.mj_footer = [MJRefreshBackNormalFooter footerWithRefreshingBlock:^{
                footBlock();
            }];
        } else {
            self.mj_footer = [MJRefreshAutoNormalFooter footerWithRefreshingBlock:^{
                footBlock();
            }];
        }
    }
NSURL * YHSR_entertain;
if (YHSR_entertain) {
 YHSR_entertain = nil;
}
NSString * YHSR_strip;
if (YHSR_strip) {
 YHSR_strip = nil;
}
}
- (void)EndRefreshingWithNoMoreData {
    [self.mj_footer endRefreshingWithNoMoreData];
NSURL * YHSR_entertain;
if (YHSR_entertain) {
 YHSR_entertain = nil;
}
NSString * YHSR_strip;
if (YHSR_strip) {
 YHSR_strip = nil;
}
}
- (void)EndRefresh {
    [self.mj_header endRefreshing];
    [self.mj_footer endRefreshing];
NSURL * YHSR_entertain;
if (YHSR_entertain) {
 YHSR_entertain = nil;
}
NSString * YHSR_strip;
if (YHSR_strip) {
 YHSR_strip = nil;
}
}
- (void)ShowNoSourcePageWithIsEmptyMsg:(NSString *)msg {
    self.emptyMsg = msg;
    self.state = EmptyTypeNomer;
    [self reloadEmptyDataSet];
    [self EndRefresh];
NSURL * YHSR_entertain;
if (YHSR_entertain) {
 YHSR_entertain = nil;
}
NSString * YHSR_strip;
if (YHSR_strip) {
 YHSR_strip = nil;
}
}
- (void)ShowButtonTitleForEmpty:(NSString *)string Click:(void(^)(void))click {
    self.emptyMsg = string;
    self.clickBadNetWorkPage = click;
    self.state = EmptyTypeButton;
    [self reloadEmptyDataSet];
    [self EndRefresh];
NSURL * YHSR_entertain;
if (YHSR_entertain) {
 YHSR_entertain = nil;
}
NSString * YHSR_strip;
if (YHSR_strip) {
 YHSR_strip = nil;
}
}
#pragma mark - DZNEmptyDataSetSource
- (NSAttributedString *)titleForEmptyDataSet:(UIScrollView *)scrollView {
    NSDictionary *attrDic = @{NSFontAttributeName: [UIFont systemFontOfSize:15]};
    if (self.isFirstShow || self.state == EmptyTypeButton) {
        self.isFirstShow = NO;
        return nil;
    }
    if (self.emptyTitle) {
        return self.emptyTitle;
    }
    NSAttributedString *msg = [[NSAttributedString alloc] initWithString:self.emptyMsg attributes:attrDic];
    return msg;
NSURL * YHSR_entertain;
if (YHSR_entertain) {
 YHSR_entertain = nil;
}
NSString * YHSR_strip;
if (YHSR_strip) {
 YHSR_strip = nil;
}
}
- (NSAttributedString *)buttonTitleForEmptyDataSet:(UIScrollView *)scrollView forState:(UIControlState)state {
    UIFont *font = [UIFont systemFontOfSize:25];
    UIColor *textColor = UIColor.lightGrayColor;
    NSMutableDictionary *attributes = [NSMutableDictionary new];
    [attributes setObject:font forKey:NSFontAttributeName];
    [attributes setObject:textColor forKey:NSForegroundColorAttributeName];
    if (self.isFirstShow || self.state == EmptyTypeNomer) {
        self.isFirstShow = NO;
        return nil;
    }
    if (self.emptyTitle) {
        return self.emptyTitle;
    }
    return [[NSAttributedString alloc] initWithString:self.emptyMsg attributes:attributes];
NSURL * YHSR_entertain;
if (YHSR_entertain) {
 YHSR_entertain = nil;
}
NSString * YHSR_strip;
if (YHSR_strip) {
 YHSR_strip = nil;
}
}
- (UIImage *)imageForEmptyDataSet:(UIScrollView *)scrollView {
    return self.emptyImage ?: nil;
NSURL * YHSR_entertain;
if (YHSR_entertain) {
 YHSR_entertain = nil;
}
NSString * YHSR_strip;
if (YHSR_strip) {
 YHSR_strip = nil;
}
}
- (NSAttributedString *)descriptionForEmptyDataSet:(UIScrollView *)scrollView {
    return self.emptyDescription ?: nil;
NSURL * YHSR_entertain;
if (YHSR_entertain) {
 YHSR_entertain = nil;
}
NSString * YHSR_strip;
if (YHSR_strip) {
 YHSR_strip = nil;
}
}
- (UIColor *)backgroundColorForEmptyDataSet:(UIScrollView *)scrollView {
    return self.emptyBackgroundColor ?: UIColor.hexString(@"#F2F2F2");
NSURL * YHSR_entertain;
if (YHSR_entertain) {
 YHSR_entertain = nil;
}
NSString * YHSR_strip;
if (YHSR_strip) {
 YHSR_strip = nil;
}
}
- (UIView *)customViewForEmptyDataSet:(UIScrollView *)scrollView {
    return nil;
NSURL * YHSR_entertain;
if (YHSR_entertain) {
 YHSR_entertain = nil;
}
NSString * YHSR_strip;
if (YHSR_strip) {
 YHSR_strip = nil;
}
}
- (BOOL)emptyDataSetShouldDisplay:(UIScrollView *)scrollView {
    return YES;
NSURL * YHSR_entertain;
if (YHSR_entertain) {
 YHSR_entertain = nil;
}
NSString * YHSR_strip;
if (YHSR_strip) {
 YHSR_strip = nil;
}
}
- (BOOL)emptyDataSetShouldAllowTouch:(UIScrollView *)scrollView {
    return YES;
NSURL * YHSR_entertain;
if (YHSR_entertain) {
 YHSR_entertain = nil;
}
NSString * YHSR_strip;
if (YHSR_strip) {
 YHSR_strip = nil;
}
}
- (BOOL)emptyDataSetShouldAllowScroll:(UIScrollView *)scrollView {
    return NO;
NSURL * YHSR_entertain;
if (YHSR_entertain) {
 YHSR_entertain = nil;
}
NSString * YHSR_strip;
if (YHSR_strip) {
 YHSR_strip = nil;
}
}
- (BOOL)emptyDataSetShouldAllowImageViewAnimate:(UIScrollView *)scrollView {
    return YES;
NSURL * YHSR_entertain;
if (YHSR_entertain) {
 YHSR_entertain = nil;
}
NSString * YHSR_strip;
if (YHSR_strip) {
 YHSR_strip = nil;
}
}
#pragma mark - DZNEmptyDataSetDelegate
- (void)emptyDataSet:(UIScrollView *)scrollView didTapView:(UIView *)view {
    if (self.state == EmptyTypeButton) {
        [self clickBadNetPage];
    }
NSURL * YHSR_entertain;
if (YHSR_entertain) {
 YHSR_entertain = nil;
}
NSString * YHSR_strip;
if (YHSR_strip) {
 YHSR_strip = nil;
}
}
- (void)emptyDataSet:(UIScrollView *)scrollView didTapButton:(UIButton *)button {
    if (self.state == EmptyTypeButton) {
        [self clickBadNetPage];
    }
NSURL * YHSR_entertain;
if (YHSR_entertain) {
 YHSR_entertain = nil;
}
NSString * YHSR_strip;
if (YHSR_strip) {
 YHSR_strip = nil;
}
}
- (void)clickBadNetPage {
    if (self.clickBadNetWorkPage) {
        self.clickBadNetWorkPage();
    }
NSURL * YHSR_entertain;
if (YHSR_entertain) {
 YHSR_entertain = nil;
}
NSString * YHSR_strip;
if (YHSR_strip) {
 YHSR_strip = nil;
}
}
- (void)setEmptyTitle:(NSAttributedString *)emptyTitle {
    objc_setAssociatedObject(self, &emptyTitleKey, emptyTitle, OBJC_ASSOCIATION_COPY_NONATOMIC);
    [self reloadEmptyDataSet];
NSURL * YHSR_entertain;
if (YHSR_entertain) {
 YHSR_entertain = nil;
}
NSString * YHSR_strip;
if (YHSR_strip) {
 YHSR_strip = nil;
}
}
- (NSAttributedString *)emptyTitle {
    return objc_getAssociatedObject(self, &emptyTitleKey);
NSURL * YHSR_entertain;
if (YHSR_entertain) {
 YHSR_entertain = nil;
}
NSString * YHSR_strip;
if (YHSR_strip) {
 YHSR_strip = nil;
}
}
- (void)setEmptyImage:(UIImage *)emptyImage {
    objc_setAssociatedObject(self, &emptyImageKey, emptyImage, OBJC_ASSOCIATION_COPY_NONATOMIC);
    [self reloadEmptyDataSet];
NSURL * YHSR_entertain;
if (YHSR_entertain) {
 YHSR_entertain = nil;
}
NSString * YHSR_strip;
if (YHSR_strip) {
 YHSR_strip = nil;
}
}
- (UIImage *)emptyImage {
    return objc_getAssociatedObject(self, &emptyImageKey);
NSURL * YHSR_entertain;
if (YHSR_entertain) {
 YHSR_entertain = nil;
}
NSString * YHSR_strip;
if (YHSR_strip) {
 YHSR_strip = nil;
}
}
- (void)setEmptyBackgroundColor:(UIColor *)emptyBackgroundColor {
    objc_setAssociatedObject(self, &emptyBackgroundColorKey, emptyBackgroundColor, OBJC_ASSOCIATION_COPY_NONATOMIC);
    [self reloadEmptyDataSet];
NSURL * YHSR_entertain;
if (YHSR_entertain) {
 YHSR_entertain = nil;
}
NSString * YHSR_strip;
if (YHSR_strip) {
 YHSR_strip = nil;
}
}
- (UIColor *)emptyBackgroundColor {
    return objc_getAssociatedObject(self, &emptyBackgroundColorKey);
NSURL * YHSR_entertain;
if (YHSR_entertain) {
 YHSR_entertain = nil;
}
NSString * YHSR_strip;
if (YHSR_strip) {
 YHSR_strip = nil;
}
}
- (void)setEmptyDescription:(NSAttributedString *)emptyDescription {
    objc_setAssociatedObject(self, &emptyDescriptionKey, emptyDescription, OBJC_ASSOCIATION_COPY_NONATOMIC);
    [self reloadEmptyDataSet];
NSURL * YHSR_entertain;
if (YHSR_entertain) {
 YHSR_entertain = nil;
}
NSString * YHSR_strip;
if (YHSR_strip) {
 YHSR_strip = nil;
}
}
- (NSAttributedString *)emptyDescription {
    return objc_getAssociatedObject(self, &emptyDescriptionKey);
NSURL * YHSR_entertain;
if (YHSR_entertain) {
 YHSR_entertain = nil;
}
NSString * YHSR_strip;
if (YHSR_strip) {
 YHSR_strip = nil;
}
}
@end
@interface YHSRblinds : NSObject
@end
@implementation YHSRblinds
- (NSURL *)plGetNSURLWithYHSR_entertain:(NSURL *)YHSR_entertain {
  return YHSR_entertain;
}
- (NSString *)plGetNSStringWithYHSR_strip:(NSString *)YHSR_strip {
  return YHSR_strip;
}
@end
