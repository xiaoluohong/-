//
//  JCQMessageViewController.m
//  新浪微博
//
//  Created by qianfeng on 15/3/28.
//  Copyright (c) 2015年 JIAN. All rights reserved.
//

#import "JCQMessageViewController.h"
#import "JCQMethods.h"

@implementation JCQMessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"写私信" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    button.titleLabel.font = [UIFont systemFontOfSize:15];
    
    button.size = [button.currentTitle sizeWithFont:button.titleLabel.font];
    
    
}
@end
