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
    HJCActionSheet *sheet = [[HJCActionSheet alloc] initWithDelegate:self labelText:@"HJCActionSheet" CancelTitle:@"取消" OtherTitles:@"拍照", @"从相册中选取", nil];
    [sheet show];
}

#pragma mark - HJCActionSheetDelegate
- (void)actionSheet:(HJCActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSLog(@"%ld", (long)buttonIndex);
}

@end
