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

/** *  最上面的 buttonIndex 为1 依次递增*/
- (void)actionSheet:(HJCActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex;

@end

@interface HJCActionSheet : UIView


@property (nonatomic, weak) id <HJCActionSheetDelegate> delegate;


/** * labelText nil 则无标题 */
- (instancetype)initWithDelegate:(id<HJCActionSheetDelegate>)delegate
                       labelText:(NSString *)title
                     CancelTitle:(NSString *)cancelTitle
                     OtherTitles:(NSString*)otherTitles ,... NS_REQUIRES_NIL_TERMINATION;


- (void)show;

@end
