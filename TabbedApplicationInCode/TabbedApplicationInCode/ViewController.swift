//
//  ViewController.swift
//  TabbedApplicationInCode
//
//  Created by Rafael Nunes Rios on 1/26/21.
//

import UIKit

class ViewController: UIViewController {

    private let button: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        button.setTitle("Log In", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        view.addSubview(button)
        button.addTarget(self,
                         action: #selector(didTapButton),
                         for: .touchUpInside)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        button.center = view.center
    }

    @objc func didTapButton() {
        // Create and present Tabbar controller
        let tabBarVC = UITabBarController()
        
        /*
        // Just create ViewControllers
        let vc1 = FirstViewController()
        let vc2 = SecondViewController()
        let vc3 = ThirdViewController()
        let vc4 = FourthViewController()
        let vc5 = FifthViewController()
        */
        
        // ViewControllers with Navigation Controller
        let vc1 = UINavigationController(rootViewController: FirstViewController())
        let vc2 = UINavigationController(rootViewController: SecondViewController())
        let vc3 = UINavigationController(rootViewController: ThirdViewController())
        let vc4 = UINavigationController(rootViewController: FourthViewController())
        let vc5 = UINavigationController(rootViewController: FifthViewController())
        
        // Title wouldn't show until it's called due to the viewcontroller isn't called
        // this solves this issue
        vc1.title = "First"
        vc2.title = "Second"
        vc3.title = "Third"
        vc4.title = "Fourth"
        vc5.title = "Fifth"
        
        tabBarVC.setViewControllers([vc1, vc2, vc3, vc4, vc5], animated: false)
        
        guard let items = tabBarVC.tabBar.items else { return }
        
        let images = ["house", "bell", "person.circle", "star", "gear"]
        
        for x in 0..<items.count {
            items[x].badgeValue = String(x + 1)
            items[x].image = UIImage(systemName: images[x])
        }
        
        tabBarVC.modalPresentationStyle = .fullScreen
        present(tabBarVC, animated: true)
    }
}

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        view.backgroundColor = .red
        title = "First"
    }
}

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        view.backgroundColor = .lightGray
        title = "Second"
    }
}

class ThirdViewController: UIViewController {
    
    override func viewDidLoad() {
        view.backgroundColor = .purple
        title = "Third"
    }
}

class FourthViewController: UIViewController {
    
    override func viewDidLoad() {
        view.backgroundColor = .green
        title = "Fourth"
    }
}

class FifthViewController: UIViewController {
    
    override func viewDidLoad() {
        view.backgroundColor = .orange
        title = "Fifth"
    }
}
