//
//  JCQNavigationController.m
//  新浪微博
//
//  Created by qianfeng on 15/3/29.
//  Copyright (c) 2015年 JIAN. All rights reserved.
//

#import "JCQNavigationController.h"
#import "JCQMethods.h"

@implementation JCQNavigationController

//当第一次使用这个类的时候调用1次
+ (void)initialize {
    
    //通过appearance对象能修改整个项目中所有UIBarButtonItem的样式
    UIBarButtonItem *appearance = [UIBarButtonItem appearance];
    //设置普通状态的文字属性
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = [UIColor orangeColor];
    textAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:15];
    
    [appearance setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    
    //设置高亮状态的文字属性
    NSMutableDictionary *highTextAttrs = [NSMutableDictionary dictionary];
    highTextAttrs[NSForegroundColorAttributeName] = [UIColor redColor];
    highTextAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:15];
    [appearance setTitleTextAttributes:highTextAttrs forState:UIControlStateHighlighted];
    
    //设置不可用状态（disable）的文字属性
    NSMutableDictionary *disableTextAttrs = [NSMutableDictionary dictionary];
    disableTextAttrs[NSForegroundColorAttributeName] = [UIColor lightGrayColor];
    disableTextAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:15];
    [appearance setTitleTextAttributes:disableTextAttrs forState:UIControlStateDisabled];
}

//能拦截所有push进来得子控制器
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    if (self.viewControllers.count > 0) {
        //如果现在push的不是栈底控制器（最先push进来的那个控制器）
        viewController.hidesBottomBarWhenPushed = YES;
        //设置导航栏按钮
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImageName:@"navigationbar_back" highImageName:@"navigationbar_back_highlighted" target:self action:@selector(back)];
        viewController.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithImageName:@"navigationbar_more" highImageName:@"navigationbar_more_highlighted" target:self action:@selector(more)];
    }
    
    [super pushViewController:viewController animated:YES];
}

- (void)back {
// warning 这里用的是self, 因为self就是当前正在使用的导航控制器
    [self popViewControllerAnimated:YES];

}
- (void)more {
    [self popToRootViewControllerAnimated:YES];
}
@end
