//
//  UIBarButtonItem+Extension.m
//  新浪微博
//
//  Created by qianfeng on 15/3/29.
//  Copyright (c) 2015年 JIAN. All rights reserved.
//

#import "UIBarButtonItem+Extension.h"
#import "UIImage+Extension.h"
#import "UIView+Extension.h"

@implementation UIBarButtonItem (Extension)

+ (UIBarButtonItem *)itemWithImageName:(NSString *)imageName highImageName:(NSString *)highImageName target:(id)target action:(SEL)action {
    
    UIButton *button = [[UIButton alloc] init];
    
    [button setBackgroundImage:[UIImage imageWithNamed:imageName] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageWithNamed:highImageName] forState:UIControlStateSelected];
    
    //设置按钮的尺寸为背景图片的尺寸
    button.size = button.currentBackgroundImage.size;
    
    //监听按钮点击
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return [[UIBarButtonItem alloc] initWithCustomView:button];
}
@end
