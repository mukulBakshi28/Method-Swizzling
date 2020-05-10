//
//  AppDelegate.swift
//  MethodSwizzlingT
//
//  Created by Mukul Bakshi on 10/05/20.
//  Copyright © 2020 Mukul Bakshi. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
 
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        swizzleFeatureButton()
        return true
    }
    
    private func swizzleFeatureButton() {
         let className = NSClassFromString("FeatureButton")
         let classSelector = Selector("changeBackground")
         let swizzelSelector = Selector("changeCustomBackground")
       if let originalSelector = class_getInstanceMethod(className, classSelector),
            let swizzleMethod = class_getInstanceMethod(UIButton.self, swizzelSelector) {
            print("Selector Getted")
            method_exchangeImplementations(originalSelector, swizzleMethod)
        }
    }
 
}


extension UIButton {
    @objc func changeCustomBackground() {
        print("Custom Background Change Called")
           backgroundColor = UIColor.purple
       }
}
