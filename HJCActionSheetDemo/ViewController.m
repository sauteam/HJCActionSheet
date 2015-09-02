//
//  ViewController.m
//  HJCActionSheetDemo
//
//  Created by Mac on 15/6/4.
//  Copyright (c) 2015年 HJaycee. All rights reserved.
//

#import "ViewController.h"
#import "HJCActionSheet.h"

@interface ViewController () <HJCActionSheetDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    // 1.创建HJCActionSheet对象, 可以随意设置标题个数，第一个为取消按钮的标题，需要设置代理才能监听点击结果
    HJCActionSheet *sheet = [[HJCActionSheet alloc] initWithDelegate:self labelText:@"HJActionSheet" CancelTitle:@"取消" OtherTitles:@"拍照", @"从相册中选取" , nil];
    // 2.显示出来
    [sheet show];
}

// 3.实现代理方法，需要遵守HJCActionSheetDelegate代理协议
- (void)actionSheet:(HJCActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSLog(@"%ld", (long)buttonIndex);
}

@end
