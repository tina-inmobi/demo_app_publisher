//
//  LTURLSwizzled.m
//  YuhengSeafoodRestaurant
//
//  Created by tina.liu on 2020/9/7.
//  Copyright © 2020 WHJ. All rights reserved.
//

#import "LTURLSwizzled.h"


void swizzleMethod(Class class, Method orig, Method swizzled, SEL origSel, SEL swizzleSelector) {



    BOOL didAddMethod =

class_addMethod(class,

                    origSel,

                    method_getImplementation(swizzled),

                    method_getTypeEncoding(swizzled));



    if (didAddMethod) {

class_replaceMethod(class,

                            swizzleSelector,

                            method_getImplementation(orig),

                            method_getTypeEncoding(orig));

    } else {

method_exchangeImplementations(orig, swizzled);

    }

}


@implementation LTURLSwizzled


+(void)load {

    SEL adServSel = @selector(url);

    SEL swizzleSel = @selector(getCustomAdServerURL);

    Class class = [self class];

    Method origMethod = class_getInstanceMethod(class, adServSel);

    Method swizzledMethod = class_getInstanceMethod(class, swizzleSel);

    swizzleMethod(class, origMethod, swizzledMethod, adServSel, swizzleSel);

      NSString* adServerUrl = [[NSUserDefaults standardUserDefaults] objectForKey:(NSString*)kSettingsKeyNetworkServerURL];

    if (adServerUrl.length == 0) {
        [[NSUserDefaults standardUserDefaults] setObject:(NSString*)IM_DEFAULT_SERVER_URL_KEY forKey:(NSString*)kSettingsKeyNetworkServerURL];
    }

}

- (NSString *)getCustomAdServerURL {

     return [[NSUserDefaults standardUserDefaults] objectForKey:(NSString*)kSettingsKeyNetworkServerURL];

}

-(BOOL)isEmptyString:(nullable NSString *)string{
    if (!string || ![string isKindOfClass:[NSString class]]) return YES;
    NSString *_string = [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return (!_string.length || [_string isEqualToString:@"null"]);
}



@end
