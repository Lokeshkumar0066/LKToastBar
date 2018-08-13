# ToastBar

![toast](https://user-images.githubusercontent.com/26429027/44013042-cb03d998-9ee0-11e8-8d79-f74a54d9eb70.gif)

LKToastView is a simple and light weight iOS like toast view for your iOS app written in Objective C, you can use the toast view in Swift as well by creating the Bridging Header and adding/importing the code.

# Example
To run the example project, clone the repo, and run the framawork file.

# Features
 ToastView Customization                                                                  
 Easy & Quick Integration

# Requirements
iOS 9.0+                                                                  
Xcode 9.1+                                                                  
Swift 4.0+

# Manual
You can directly add the LKToastBar.framework into your Xcode project.

Include LKToastBar wherever you need to add the #import <LKToastBar/LKToastBar.h>.


Now, you can show ToastView with status message:
### Objective C
    [toastView initWithDefaultNibAndDelegate:self message:@"please check, how's the toast is? please check, how's the toast is? please check, how's the toast is? ple please check, how's the toast is? please check, how's the toast is? please check, how's the toast is? ple" dismissTitle:@"Dismiss" titleToast:@"Alert" vc:self];
    
### Swift
    toastView .initWithDefaultNibAndDelegate(self, message: "please check, how's the toast is? please check, how's the toast is? please check, how's the toast is? ple please check, how's the toast is? please check, how's the toast is? please check, how's the toast is? ple", dismissTitle: "Dismiss", titleToast: "Alert", vc: self)


# Customization

### Objective C
toastView.toastAnimationStyle =ToastAnimationStyleMedium;                                                                      
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

### Swift

toastView.titleColor = UIColor .red                                                                   
toastView.messageColor = UIColor .green
toastView.toastColor = UIColor .black                                                                  
toastView.dismissColor = UIColor .white                                                                  
toastView.errorMessageFontFamily = "Helvetica-Bold"                                                                  
toastView.errorMessageFontSize = 13.0                                                                  
toastView.titleFontFamily = "Helvetica-Bold"                                                                  
toastView.titleFontSize = 13.0                                                                  
toastView.dismissFontFamily = "Helvetica-Bold"                                                                  
toastView.dismissFontSize = 13.0                                                                  
