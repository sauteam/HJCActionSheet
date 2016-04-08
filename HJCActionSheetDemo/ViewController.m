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
    HJCActionSheet *sheet = [[HJCActionSheet alloc] initWithTitle:@"HJCActionSheet" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"相册", @"照片", nil];
    [sheet show];
}

#pragma mark - HJCActionSheetDelegate
- (void)actionSheet:(HJCActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSLog(@"%ld", (long)buttonIndex);
}

@end
