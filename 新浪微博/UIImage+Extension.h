//
//  UIImage+Extension.h
//  新浪微博
//
//  Created by qianfeng on 15/3/28.
//  Copyright (c) 2015年 JIAN. All rights reserved.
//

#import <UIKit/UIKit.h>
#define IOS7 ([[UIDevice currentDevice].systemVersion doubleValue] >= 7.0)

@interface UIImage (Extension)

+ (UIImage *)imageWithNamed:(NSString *)name;

@end
