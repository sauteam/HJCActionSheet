//
//  HJCActionSheet.h
//  wash
//
//  Created by weixikeji on 15/5/11.
//
//

#import <UIKit/UIKit.h>

@class HJCActionSheet;

@protocol HJCActionSheetDelegate <NSObject>

@optional

/** *   buttonIndex 从上到下(1开始) 依次递增*/
- (void)actionSheet:(HJCActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex;

@end

@interface HJCActionSheet : UIView

//@property (nonatomic, copy) NSString *title;
@property (nonatomic, weak) id <HJCActionSheetDelegate> delegate;

/*** init HJCActionSheet */
- (instancetype)initWithTitle:(NSString *)title
                     delegate:(id<HJCActionSheetDelegate>)delegate
            cancelButtonTitle:(NSString *)cancelButtonTitle
            otherButtonTitles:(NSString *)otherButtonTitles, ... NS_REQUIRES_NIL_TERMINATION;


- (void)show;

@end
