//
//  SplashViewController.m
//  ImmobiSDKDemo
//
//  Created by Westy.zhang on 2020/3/20.
//  Copyright © 2020 Westy.zhang. All rights reserved.
//

#import "SplashViewController.h"
#import <InMobiSDK/IMNative.h>

@interface SplashViewController ()<IMNativeDelegate>
@property (nonatomic,strong) IMNative * splashNative;
@property (nonatomic,strong) UIView * splashView;
//当用户点击广告时，可能会展示一个新的页面，移除广告view时需要检查一下
@property (nonatomic,assign) BOOL isSecondScreenDisplayed;
@end

@implementation SplashViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Splash";
    self.view.backgroundColor = [UIColor whiteColor];
    self.splashNative = [[IMNative alloc] initWithPlacementId:1600557603468 delegate:self];
    [self.splashNative load];
    self.isSecondScreenDisplayed = NO;
}

//sdk已经获取到了广告，正在下载素材
-(void)nativeAdIsAvailable:(IMNative*)native{
    NSLog(@"Splash nativeAdIsAvailable");
}
//sdk已经渲染好了广告，app可以展示了
-(void)nativeDidFinishLoading:(IMNative*)native{
    NSLog(@"Splash nativeDidFinishLoading");
    self.splashView = [native primaryViewOfWidth:[UIScreen mainScreen].bounds.size.width];
    [[UIApplication sharedApplication].keyWindow addSubview:self.splashView];
    [self performSelector:@selector(dismissAd) withObject:nil afterDelay:5];
}
-(void)dismissAd{
    if (self.isSecondScreenDisplayed) {
        NSLog(@"广告处于展示第二页面情况下，请勿移除广告");
    }else{
        [self.splashView removeFromSuperview];
    }
}
//sdk加载广告失败
-(void)native:(IMNative*)native didFailToLoadWithError:(IMRequestStatus*)error{
    NSLog(@"Splash didFailToLoadWithError %@",error);
    UIAlertController * alter = [UIAlertController alertControllerWithTitle:@"Error" message:error.localizedDescription preferredStyle:1];
    UIAlertAction * alertAction = [UIAlertAction actionWithTitle:@"确定" style:0 handler:nil];
    [alter addAction:alertAction];
    [self presentViewController:alter animated:YES completion:nil];
}



//调用getSignals后返回的signal
-(void)native:(IMNative*)native gotSignals:(NSData*)signals{
    NSLog(@"Splash gotSignals %@",signals);
}
//调用getSignals后返回的signal
-(void)native:(IMNative*)native failedToGetSignalsWithError:(IMRequestStatus*)status{
    NSLog(@"Splash failedToGetSignalsWithError %@",status);
}
//当用户点击广告后，sdk将要展示一个全屏内容（不是广告将要显示的回调）
-(void)nativeWillPresentScreen:(IMNative*)native{
    NSLog(@"Splash nativeWillPresentScreen");
    self.isSecondScreenDisplayed = YES;
}
//当用户点击广告后，sdk已经展示一个全屏内容（不是广告显示的回调）
-(void)nativeDidPresentScreen:(IMNative*)native{
    NSLog(@"Splash nativeDidPresentScreen");
}
//当用户点击广告后，sdk展示全屏内容后，将要关闭全屏内容（不是广告将要关闭的回调）
-(void)nativeWillDismissScreen:(IMNative*)native{
    NSLog(@"Splash nativeWillDismissScreen");
    self.isSecondScreenDisplayed = NO;
    [self dismissAd];
}
//当用户点击广告后，sdk展示全屏内容后，已经关闭全屏内容（不是广告关闭的回调）
-(void)nativeDidDismissScreen:(IMNative*)native{
    NSLog(@"Splash nativeDidDismissScreen");
}
//用户将要从广告中离开app
-(void)userWillLeaveApplicationFromNative:(IMNative*)native{
    NSLog(@"Splash userWillLeaveApplicationFromNative");
}
//广告已经曝光
-(void)nativeAdImpressed:(IMNative*)native{
    NSLog(@"Splash nativeAdImpressed");
}
//用户点击了广告
-(void)native:(IMNative*)native didInteractWithParams:(NSDictionary*)params{
    NSLog(@"Splash didInteractWithParams %@",params);
}
//sdk播放完了视频
-(void)nativeDidFinishPlayingMedia:(IMNative*)native{
    NSLog(@"Splash nativeDidFinishPlayingMedia");
}
//用户点击了视频的跳过按钮
-(void)userDidSkipPlayingMediaFromNative:(IMNative*)native{
    NSLog(@"Splash userDidSkipPlayingMediaFromNative");
}
//当媒体声音变化时调用，audioStateMuted为YES代表声音被关掉，NO代表声音被打开
-(void)native:(IMNative*)native adAudioStateChanged:(BOOL)audioStateMuted{
    NSLog(@"Splash adAudioStateChanged");
}
@end
