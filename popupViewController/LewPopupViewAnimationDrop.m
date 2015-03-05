//
//  LewPopupViewAnimationDrop.m
//  LewPopupViewController
//
//  Created by deng on 15/3/5.
//  Copyright (c) 2015年 pljhonglu. All rights reserved.
//

#import "LewPopupViewAnimationDrop.h"

@implementation LewPopupViewAnimationDrop

- (void)showView:(UIView *)popupView overlayView:(UIView *)overlayView{
    popupView.center = CGPointMake(overlayView.center.x, -popupView.bounds.size.height/2);
    
    popupView.transform = CGAffineTransformMakeRotation(-M_1_PI / 2);
    
    [UIView animateWithDuration:0.30f delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        popupView.transform = CGAffineTransformMakeRotation(0);
        popupView.center = overlayView.center;
    } completion:nil];
}

- (void)dismissView:(UIView *)popupView overlayView:(UIView *)overlayView completion:(void (^)(void))completion{

    [UIView animateWithDuration:0.35f delay:0.0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        overlayView.alpha = 0.0;
        popupView.center = CGPointMake(overlayView.center.x, overlayView.bounds.size.height+popupView.bounds.size.height);
        popupView.transform = CGAffineTransformMakeRotation(M_1_PI / 1.5);
    } completion:^(BOOL finished) {
        completion();
    }];

}
@end
