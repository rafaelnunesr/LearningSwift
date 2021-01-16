//
//  UIView+extension.swift
//  tabbar-santander
//
//  Created by Rafael Nunes Rios on 1/15/21.
//

import Foundation

class UIView {
    
    func addBlurEffect() {
        let blurEffect = UIBlurEffect(style: .extraLight)
        let blurredEffectView = UIVisualEffectView(effect: blurEffect)
        blurredEffectView.frame = self.bounds
        blurredEffectView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
        self.addSubview(blurredEffectView)
    }
    
    func addBlurEffect(style: UIBlurEffect.Style? = .dark) {
        
        let blurEffect = UIBlurEffect(style: style ?? .dark)
        let blurredEffectView = UIVisualEffectView(effect: blurEffect)
        blurredEffectView.frame = self.bounds
        blurredEffectView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
        self.addSubview(blurredEffectView)
    }
    
    func removeBlurEffect() {
        for subView in self.subviews {
            if subView is UIViewVisualEffectView {
                subView.removeFromSuperview()
            }
        }
    }
}
