//
//  ViewController.m
//  XFSegementLabel
//
//  Created by 李雪峰 on 16/1/29.
//  Copyright © 2016年 hfuu. All rights reserved.
//

#import "ViewController.h"
#import "XFSegementView.h"
@interface ViewController ()<TouchLabelDelegate>
{
    XFSegementView *segementView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    segementView = [[XFSegementView alloc]initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 50)];
//    [segementView setBackgroundColor:[UIColor cyanColor]];
//    [segementView setFrame:CGRectMake(0, 200, 320, 100)];
//    segementView.titleArray = @[@"设计",@"舞蹈",@"歌唱",@"达人"];
    segementView.titleArray = @[@"美女",@"帅哥",@"奇葩",@"正太",@"萌妹"];
    
//    segementView.scrollLineColor = [UIColor greenColor];
    [segementView.scrollLine setBackgroundColor:[UIColor greenColor]];
    segementView.titleSelectedColor = [UIColor redColor];
    //    segementView.titleSelectedColor = [UIColor greenColor];
    segementView.touchDelegate = self;
//    segementView.haveNoRightLine = NO;
    [self.view addSubview:segementView];
}

- (void)touchLabelWithIndex:(NSInteger)index{
    NSLog(@"我是第%ld个label",index);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
