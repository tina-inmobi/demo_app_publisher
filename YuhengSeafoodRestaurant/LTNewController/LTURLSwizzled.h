//
//  LTURLSwizzled.h
//  YuhengSeafoodRestaurant
//
//  Created by tina.liu on 2020/9/7.
//  Copyright © 2020 WHJ. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LTURLSwizzled : NSObject
@property (nonatomic, strong) NSString *url;
-(NSString*)getCustomAdServerURL;
@end

NS_ASSUME_NONNULL_END
