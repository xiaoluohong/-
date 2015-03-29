//
//  UIBarButtonItem+Extension.h
//  新浪微博
//
//  Created by qianfeng on 15/3/29.
//  Copyright (c) 2015年 JIAN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)

+ (UIBarButtonItem *)itemWithImageName:(NSString *)imageName highImageName:(NSString *)highImageName target:(id)target action:(SEL)action;
@end
