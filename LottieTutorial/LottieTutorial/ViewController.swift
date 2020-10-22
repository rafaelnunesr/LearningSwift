//
//  ViewController.swift
//  LottieTutorial
//
//  Created by Rafael Nunes Rios on 10/21/20.
//

import UIKit
import Lottie


class ViewController: UIViewController {

    /*
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    */
    
    // 1. Create the AnimationView
    private var animationView: AnimationView?

    override func viewDidLoad() {

      super.viewDidLoad()
      
      // 2. Start AnimationView with animation name (without extension)
      
      animationView = .init(name: "success")
      
      animationView!.frame = view.bounds
      
      // 3. Set animation content mode
      
      animationView!.contentMode = .scaleAspectFit
      
      // 4. Set animation loop mode
      
      animationView!.loopMode = .loop
      
      // 5. Adjust animation speed
      
      animationView!.animationSpeed = 0.5
      
      view.addSubview(animationView!)
      
      // 6. Play animation
      
      animationView!.play()
      
    }


}

