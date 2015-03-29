//
//  JCQHomeViewController.m
//  新浪微博
//
//  Created by qianfeng on 15/3/28.
//  Copyright (c) 2015年 JIAN. All rights reserved.
//

#import "JCQHomeViewController.h"
#import "JCQNavigationController.h"
#import "JCQMethods.h"

@implementation JCQHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImageName:@"navigationbar_friendSearch" highImageName:@"navigationbar_friendSearch_highlighted" target:self action:@selector(friendSearch)];
}
- (void)friendSearch {
    
}


#pragma mark --UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *Id = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:Id];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:Id];
        
    }
    cell.textLabel.text = [NSString stringWithFormat:@"测试数据--%d", indexPath.row];
    return cell;
    
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UIViewController *newVC = [[UIViewController alloc] init];
    newVC.view.backgroundColor = [UIColor lightGrayColor];
    //当push这个控制器 
    
    [self.navigationController pushViewController:newVC animated:YES];
    
}
@end
