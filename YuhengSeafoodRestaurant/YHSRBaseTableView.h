#import <UIKit/UIKit.h>
@interface YHSRBaseTableView : UITableView
@property (nonatomic, copy)NSAttributedString * emptyTitle;
@property (nonatomic, strong)UIImage * emptyImage;
@property (nonatomic, strong)UIColor * emptyBackgroundColor;
@property (nonatomic, copy)NSAttributedString * emptyDescription;
@property (nonatomic, copy)NSArray * dataSoureBaseArray;
- (void)ShowNoSourcePageWithIsEmptyMsg:(NSString *)msg;
- (void)ShowButtonTitleForEmpty:(NSString *)string Click:(void(^)(void))click;
- (void)RefreshHeaderWithRefreshingBlock:(void(^)(void))headerBlock footerWithRefreshingBlock:(void(^)(void))footBlock;
- (void)RefreshHeaderWithRefreshingBlock:(void(^)(void))headerBlock;
- (void)RefreshFooterWithRefreshingBlock:(void(^)(void))footBlock;
- (void)EndRefreshingWithNoMoreData;
- (void)EndRefresh;
@end
