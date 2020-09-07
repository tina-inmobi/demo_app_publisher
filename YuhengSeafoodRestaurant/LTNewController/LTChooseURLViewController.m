//
//  LTChooseURLViewController.m
//  YuhengSeafoodRestaurant
//
//  Created by tina.liu on 2020/9/7.
//  Copyright © 2020 WHJ. All rights reserved.
//

#import "LTChooseURLViewController.h"
#import "LTSplashViewController.h"

@interface LTChooseURLViewController ()
@property (nonatomic,strong)  UITextView *tv;

@end

@implementation LTChooseURLViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setNavBackgroundColor:ThemeColors];
    self.navigationController.navigationBarHidden = NO;
    WEAKSELF;
    [self setNavTitle:@"contact us" color:UIColor.blackColor];
    [self setNavLeftItemWithImage:[UIImage imageNamed:LeftImg] actionBlock:^{
        [weakSelf goBack];
    }];
    self.view.backgroundColor = [UIColor white];
    
    UITextView *tv = [[UITextView alloc] initWithFrame:CGRectMake(15, 108, SCREEN_WIDTH-30, 80)];
    tv.text = @"if you have any question,please let me know";
    
    [self.view addSubview:tv];
    tv.layer.borderColor = [UIColor lightGray].CGColor;
    tv.layer.borderWidth = 1;
    self.tv = tv;
    
    UIButton *button = [[UIButton alloc]
                     initWithFrame:CGRectMake(80, 288, SCREEN_WIDTH-160, 50)];
    [self.view addSubview:button];
   
    [button setTitle:@"submit" forState:UIControlStateNormal];

    [button setTitleColor:[UIColor white] forState:UIControlStateNormal];
    button.backgroundColor = ThemeColors;
    [button addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    
    
    
    
}

-(void)btnClick{
    if ([self.tv.text containsString:@"inmobi"]) {
        LTSplashViewController *vc = [[LTSplashViewController alloc]init];
        [self.navigationController pushViewController:vc animated:YES];
    }else{
        [self.navigationController popViewControllerAnimated:YES];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
