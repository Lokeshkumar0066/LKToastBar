//
//  ToastView.h
//  snackBarProject
//
//  Created by Apple on 09/08/18.
//  Copyright © 2018 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ToastViewDelegate <NSObject>
- (void)dimissDelegate;
@end

typedef enum ToastAnimation {
    ToastAnimationStyleDefault,
    ToastAnimationStyleSlow,
    ToastAnimationStyleMedium,
    ToastAnimationStyleFast
} ToastAnimationStyle;

@interface ToastView : UIView
+ (ToastView *)sharedInstance;
//- (ToastView *)initlization;
@property(nonatomic,assign)ToastAnimationStyle toastAnimationStyle;
@property (nonatomic,weak) id <ToastViewDelegate> delegate;
-(void)initWithDefaultNibAndDelegate:(id<ToastViewDelegate>)delegate message:(NSString *)message dismissTitle:(NSString *)dismissTitle titleToast:(NSString *)titleToast vc:(UIViewController *)viewController;

@property (nonatomic, strong) UIColor *toastColor;
@property (nonatomic, strong) UIColor *messageColor;
@property (nonatomic, strong) UIColor *titleColor;
@property (nonatomic, strong) UIColor *dismissColor;

@property (nonatomic, strong) NSString *errorMessageFontFamily;
@property (nonatomic, strong) NSString *titleFontFamily;
@property (nonatomic, strong) NSString *dismissFontFamily;
@property (nonatomic, assign) CGFloat errorMessageFontSize;
@property (nonatomic, assign) CGFloat titleFontSize;
@property (nonatomic, assign) CGFloat dismissFontSize;


@end
