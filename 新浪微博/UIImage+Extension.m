//
//  UIImage+Extension.m
//  新浪微博
//
//  Created by qianfeng on 15/3/28.
//  Copyright (c) 2015年 JIAN. All rights reserved.
//

#import "UIImage+Extension.h"


@implementation UIImage (Extension)

+ (UIImage *)imageWithNamed:(NSString *)name {
    
    UIImage *image = nil;
    
    if (IOS7) {
        NSString *newName = [name stringByAppendingString:@"_os7"];
        image = [UIImage imageNamed:newName];
    }
    if (image == nil) {
        image = [UIImage imageNamed:name];
    }
    return image;
}
@end
