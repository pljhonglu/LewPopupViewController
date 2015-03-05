//
//  PopupView.m
//  LewPopupViewController
//
//  Created by deng on 15/3/5.
//  Copyright (c) 2015年 pljhonglu. All rights reserved.
//

#import "PopupView.h"
#import "UIViewController+LewPopupViewController.h"
#import "LewPopupViewAnimationFade.h"
#import "LewPopupViewAnimationSlide.h"
#import "LewPopupViewAnimationSpring.h"
#import "LewPopupViewAnimationDrop.h"

@implementation PopupView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [[NSBundle mainBundle] loadNibNamed:[[self class] description] owner:self options:nil];
        _innerView.frame = frame;
        [self addSubview:_innerView];
    }
    return self;
}


+ (instancetype)defaultPopupView{
    return [[PopupView alloc]initWithFrame:CGRectMake(0, 0, 195, 210)];
}

- (IBAction)dismissAction:(id)sender{
    [_parentVC lew_dismissPopupView];
}

- (IBAction)dismissViewFadeAction:(id)sender{
    [_parentVC lew_dismissPopupViewWithanimation:[LewPopupViewAnimationFade new]];
}

- (IBAction)dismissViewSlideAction:(id)sender{
    LewPopupViewAnimationSlide *animation = [[LewPopupViewAnimationSlide alloc]init];
    animation.type = LewPopupViewAnimationSlideTypeTopBottom;
    [_parentVC lew_dismissPopupViewWithanimation:animation];
}

- (IBAction)dismissViewSpringAction:(id)sender{
    [_parentVC lew_dismissPopupViewWithanimation:[LewPopupViewAnimationSpring new]];
}

- (IBAction)dismissViewDropAction:(id)sender{
    [_parentVC lew_dismissPopupViewWithanimation:[LewPopupViewAnimationDrop new]];
}
@end
