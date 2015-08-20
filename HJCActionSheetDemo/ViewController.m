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
{
    UILabel *_testLabel;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    // 这个_testLabel是用来显示点击结果的，没有用处
    _testLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 50, self.view.bounds.size.width, 50)];
    _testLabel.font = [UIFont systemFontOfSize:40];
    _testLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:_testLabel];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    // 1.创建HJCActionSheet对象, 可以随意设置标题个数，第一个为取消按钮的标题，需要设置代理才能监听点击结果
    HJCActionSheet *sheet = [[HJCActionSheet alloc] initWithDelegate:self labelText:@"HJActionSheet" CancelTitle:@"取消" OtherTitles:@"哈哈", @"嘿嘿", @"哄哄" , nil];
    // 2.显示出来
    [sheet show];
}

// 3.实现代理方法，需要遵守HJCActionSheetDelegate代理协议
- (void)actionSheet:(HJCActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    switch (buttonIndex) {
        case 1:
            _testLabel.text = @"哈哈";
            break;
        case 2:
            _testLabel.text = @"嘿嘿";
            break;
        case 3:
            _testLabel.text = @"哄哄";
            break;
    }
}

@end
