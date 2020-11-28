//
//  BaseViewViewController.swift
//  TabBar
//
//  Created by Rafael Nunes Rios on 11/27/20.
//

import UIKit

class BaseViewViewController: UIViewController {

    private var customAnimationView: CustomAnimationView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func showLoading() {
        print("running showLoading")
        //self.customAnimationView = CustomAnimationView()
        self.customAnimationView?.frame = self.view.frame
        self.customAnimationView?.setupCustomAnimation(animationName: "loading")
        self.view.addSubview(self.customAnimationView ?? UIView())
    }
    
    func stopAnimation() {
        self.customAnimationView?.hiddenLoading()
        self.customAnimationView?.isHidden = true
    }

}
