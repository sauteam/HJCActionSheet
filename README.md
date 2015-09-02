### HJCActionSheet

A ActionSheet Demo

### TODO

Like weChat App ActionSheet

### Intorduce

This Demo is based in HJCActionSheet, As a requestment, I add a new titlte, such as UIActionSheet.

基于HJCActionSheet，由于需求，我添加了ActionSheet title，但是你依然可以用如同微信那样的提示框，刚好搜到GitHub没有此Demo，所以搬运过来，学习交流，注Author(原作者):<a href = "http://code.cocoachina.com/detail/303720">huangxisu</a>保留一切权限，当然也可以要求删除。

### Usage	

``` 
- (instancetype)initWithDelegate:(id<HJCActionSheetDelegate>)delegate  
						labelText:(NSString *)title 
					 CancelTitle:(NSString *)cancelTitle 
		 OtherTitles:(NSString*)otherTitles ,... NS_REQUIRES_NIL_TERMINATION;
```

You can drag HJCActionSheet to your Project

``` objective-c
    HJCActionSheet *sheet = [[HJCActionSheet alloc] initWithDelegate:self labelText:@"HJActionSheet" CancelTitle:@"取消" OtherTitles:@"拍照", @"从相册中选取" , nil];
    [sheet show];
```

If you don't need show title ,you can this

``` objective-c
    HJCActionSheet *sheet = [[HJCActionSheet alloc] initWithDelegate:self labelText:nil CancelTitle:@"取消" OtherTitles:@"拍照", @"从相册中选取" , nil];
    [sheet show];
```

   ![HJCAtionSheet intro](https://github.com/sauteam/HJCActionSheet/blob/master/intro.gif) 

### License

HJCActionSheet is under MIT License. See LICENSE file for more information. 



