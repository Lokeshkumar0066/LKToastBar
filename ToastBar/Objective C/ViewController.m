//
//  ViewController.m
//  ToastBar
//
//  Created by Apple on 10/08/18.
//  Copyright © 2018 Apple. All rights reserved.
//

#import "ViewController.h"
#import <LKToastBar/LKToastBar.h>

@interface ViewController ()<ToastViewDelegate>{
    ToastView *toastView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    toastView = [ToastView sharedInstance];
    
    // You can use the below code, when you want to load toast view without calling hit any action.
    /*
     dispatch_async(dispatch_get_main_queue(), ^{
        [self loadToastView];
    });
     */

    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)loadToastView{
    toastView.toastAnimationStyle = ToastAnimationStyleMedium;
    /*
     toastView.titleColor = [UIColor redColor];
     toastView.messageColor = [UIColor greenColor];
     toastView.toastColor = [UIColor blackColor];
     toastView.dismissColor = [UIColor whiteColor];
     toastView.errorMessageFontFamily = @"Helvetica-Bold";
     toastView.errorMessageFontSize = 13.0;
     toastView.titleFontFamily = @"Helvetica-Bold";
     toastView.titleFontSize = 13.0;
     toastView.dismissFontFamily = @"Helvetica-Bold";
     toastView.dismissFontSize = 13.0;
     */
    [toastView initWithDefaultNibAndDelegate:self message:@"please check, how's the toast is? please check, how's the toast is? please check, how's the toast is? ple please check, how's the toast is? please check, how's the toast is? please check, how's the toast is? ple" dismissTitle:@"Dismiss" titleToast:@"Alert" vc:self];
}

#define mark Delegate Property of Dismiss Button

- (void)dimissDelegate{
    NSLog(@"Dismiss Button Pressed");
}


- (IBAction)BtnToast:(id)sender {
    [self loadToastView];
}
@end
