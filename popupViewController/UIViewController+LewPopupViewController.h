//
//  UIViewController+LewPopupViewController.h
//  LewPopupViewController
//
//  Created by pljhonglu on 15/3/4.
//  Copyright (c) 2015年 pljhonglu. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol LewPopupAnimation <NSObject>
@required
- (void)showView:(UIView*)popupView overlayView:(UIView*)overlayView;
- (void)dismissView:(UIView*)popupView overlayView:(UIView*)overlayView completion:(void (^)(void))completion;

@end

@interface UIViewController (LewPopupViewController)
@property (nonatomic, retain, readonly) UIView *lewPopupView;
@property (nonatomic, retain, readonly) UIView *lewOverlayView;
@property (nonatomic, retain, readonly) id<LewPopupAnimation> lewPopupAnimation;

// default click background to disappear
- (void)lew_presentPopupView:(UIView *)popupView animation:(id<LewPopupAnimation>)animation;
- (void)lew_presentPopupView:(UIView *)popupView animation:(id<LewPopupAnimation>)animation dismissed:(void(^)(void))dismissed;

- (void)lew_presentPopupView:(UIView *)popupView animation:(id<LewPopupAnimation>)animation backgroundClickable:(BOOL)clickable;
- (void)lew_presentPopupView:(UIView *)popupView animation:(id<LewPopupAnimation>)animation backgroundClickable:(BOOL)clickable dismissed:(void(^)(void))dismissed;

- (void)lew_dismissPopupView;
- (void)lew_dismissPopupViewWithanimation:(id<LewPopupAnimation>)animation;
@end

#pragma mark - 
@interface UIView (lewPopupViewController)
@property (nonatomic, weak, readonly) UIViewController *lewPopupViewController;

@end