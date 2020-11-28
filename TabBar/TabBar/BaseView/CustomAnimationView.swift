//
//  CustomAnimationView.swift
//  TabBar
//
//  Created by Rafael Nunes Rios on 11/27/20.
//

import UIKit
import Lottie

class CustomAnimationView: UIView {

    private var backgroundView = UIView()
    private var animationView =  AnimationView()
    
    func setupCustomAnimation(animationName: String) {
        setupBackgroundView()
        setupAnimationView()
        setAnimation(animationName: animationName)
        print("running this function setupCustomAnimation")
    }
    
    
    private func setupBackgroundView() {
        self.backgroundView.backgroundColor = .white
    }
    
    private func setupAnimationView() {
        self.animationView.translatesAutoresizingMaskIntoConstraints = false
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(self.animationView.heightAnchor.constraint(equalToConstant: 250))
        constraints.append(self.animationView.widthAnchor.constraint(equalToConstant: 250))
        constraints.append(self.animationView.centerXAnchor.constraint(equalTo: self.backgroundView.centerXAnchor))
        constraints.append(self.animationView.centerYAnchor.constraint(equalTo: self.backgroundView.centerYAnchor))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    private func setAnimation(animationName: String) {
        self.animationView = AnimationView(name: animationName)
        self.animationView.loopMode = .loop
        self.animationView.contentMode = .scaleAspectFit
        self.animationView.play()
    }
    
    func hiddenLoading() {
        self.animationView.stop()
    }

}
