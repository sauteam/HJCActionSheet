### HJCActionSheet

A like weChat ActionSheet 

### TODO

Like weChat App ActionSheet

### Intro

This Demo is based in HJCActionSheet, As a requestment, I add a new titlte, such as UIActionSheet.

基于HJCActionSheet，由于需求，我添加了ActionSheet title，但是你依然可以用如同微信那样的提示框，所以搬运过来，学习交流，注Author(原作者):<a href = "http://code.cocoachina.com/detail/303720">huangxisu</a>，有问题请联系@Sauchye。

### Usage	

``` 
- (instancetype)initWithTitle:(NSString *)title
                     delegate:(id<HJCActionSheetDelegate>)delegate
            cancelButtonTitle:(NSString *)cancelButtonTitle
            otherButtonTitles:(NSString *)otherButtonTitles, ... NS_REQUIRES_NIL_TERMINATION;
```

You can drag HJCActionSheet File to your Project

``` objective-c
    HJCActionSheet *sheet = [[HJCActionSheet alloc] initWithTitle:@"HJCActionSheet" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"相册", @"照片", nil];
    [sheet show];

```

``` 
#pragma mark - HJCActionSheetDelegate
- (void)actionSheet:(HJCActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex;
```

![HJCAtionSheet intro](https://github.com/sauteam/HJCActionSheet/blob/master/intro.gif) 

### License

HJCActionSheet is under MIT License. See LICENSE file for more information. 

