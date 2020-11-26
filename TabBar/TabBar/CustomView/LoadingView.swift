//
//  LoadingView.swift
//  TabBar
//
//  Created by Rafael Nunes Rios on 11/25/20.
//

import UIKit
import Lottie

class LoadingView: UIView {
    
    @IBOutlet weak var animationLoadingView: AnimationView!

    func showLoading() {
        self.animationLoadingView.loopMode = .loop
        self.animationLoadingView.contentMode = .scaleAspectFit
        self.animationLoadingView.play()
    }
    
    private func hiddenLoading() {
        self.animationLoadingView.stop()
    }

}
