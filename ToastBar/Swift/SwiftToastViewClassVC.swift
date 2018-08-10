//
//  SwiftToastViewClassVC.swift
//  ToastBar
//
//  Created by Apple on 10/08/18.
//  Copyright © 2018 Apple. All rights reserved.
//

import UIKit

class SwiftToastViewClassVC: UIViewController,ToastViewDelegate {

    var toastView = ToastView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        toastView = ToastView .sharedInstance()
        
        // You can use the below code, when you want to load toast view without calling hit any action.
        /*
        DispatchQueue.main.async {
            self.loadToastView()
        }
        */
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Dismiss Button Delegate
    func dimissDelegate(){
       print("Dismiss Button Pressed")
    }

    func loadToastView(){
        toastView.toastAnimationStyle = ToastAnimationStyleMedium;
        /*
         toastView.titleColor = UIColor .red;
         toastView.messageColor = UIColor .green;
         toastView.toastColor = UIColor .black;
         toastView.dismissColor = UIColor .white;
         toastView.errorMessageFontFamily = "Helvetica-Bold";
         toastView.errorMessageFontSize = 13.0;
         toastView.titleFontFamily = "Helvetica-Bold";
         toastView.titleFontSize = 13.0;
         toastView.dismissFontFamily = "Helvetica-Bold";
         toastView.dismissFontSize = 13.0;
        */
        toastView .initWithDefaultNibAndDelegate(self, message: "please check, how's the toast is? please check, how's the toast is? please check, how's the toast is? ple please check, how's the toast is? please check, how's the toast is? please check, how's the toast is? ple", dismissTitle: "Dismiss", titleToast: "Alert", vc: self)
    }

    @IBAction func BtnToast(_ sender: Any) {
        loadToastView()
    }
    
    
}
