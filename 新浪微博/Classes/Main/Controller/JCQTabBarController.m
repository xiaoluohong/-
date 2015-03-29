//
//  JCQTabBarController.m
//  新浪微博
//
//  Created by qianfeng on 15/3/28.
//  Copyright (c) 2015年 JIAN. All rights reserved.
//

#import "JCQTabBarController.h"
#import "JCQHomeViewController.h"
#import "JCQMessageViewController.h"
#import "JCQDiscoverViewController.h"
#import "JCQProfileViewController.h"

#import "JCQMethods.h"

#import "JCQNavigationController.h"

@interface JCQTabBarController ()

@end

@implementation JCQTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //首页
    JCQHomeViewController *home = [[JCQHomeViewController alloc] init];
    [self addChildViewController:home title:@"首页" imageName:@"tabbar_home@3x" selectImageName:@"tabbar_home_selected@3x"];
    //消息
    JCQMessageViewController *message = [[JCQMessageViewController alloc] init];
    [self addChildViewController:message title:@"消息" imageName:@"tabbar_message_center@3x" selectImageName:@"tabbar_message_center_selected@3x"];
    //发现
    JCQDiscoverViewController *discover = [[JCQDiscoverViewController alloc] init];
    [self addChildViewController:discover title:@"发现" imageName:@"tabbar_discover@3x" selectImageName:@"tabbar_discover_selected@3x"];
    //我
    JCQProfileViewController *profile = [[JCQProfileViewController alloc] init];
    [self addChildViewController:profile title:@"我" imageName:@"tabbar_profile@3x"  selectImageName:@"tabbar_profile_selected@3x"];
    
}

- (void)addChildViewController:(UIViewController *)childController title:(NSString *)title imageName:(NSString *)imageName selectImageName:(NSString *)selectImageName {
    
    //设置标题
//    //设置tabBar的标题
//    childController.tabBarItem.title = title;
//    //设置导航栏的标题
//    childController.navigationItem.title = title;
    //用于替代上面两行
    childController.title = title;
    
    
    //设置图标
    childController.tabBarItem.image = [UIImage imageWithNamed:imageName];
    //设置选中的图标
    UIImage *selectImage = [UIImage imageWithNamed:selectImageName];
    
    if (IOS7) {
        //声明这张图片用原图（别渲染）
        selectImage = [selectImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    
    childController.tabBarItem.selectedImage = selectImage;
    
    //添加为tabBar控制器的子控制器
    JCQNavigationController *nav = [[JCQNavigationController alloc] initWithRootViewController:childController];
    
    [self addChildViewController:nav];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
