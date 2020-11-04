//
//  ViewController.swift
//  DelegateProtocol
//
//  Created by Rafael Nunes Rios on 11/3/20.
//

import UIKit

class BaseScreen: UIViewController {
    
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var chooseButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        chooseButton.layer.cornerRadius = chooseButton.frame.size.height / 2
    }
    
    @IBAction func chooseButtonTapped(_ sender: UIButton) {
        let selectionVC = UIStoryboard(name: "SelectionScreen", bundle: nil).instantiateInitialViewController() as! SelectionScreen
        selectionVC.selectionDelegate = self
        present(selectionVC, animated: true, completion: nil)
    }
}

extension BaseScreen: SideSelectionDelegate {
    func didTapChoice(image: UIImage, name: String, color: UIColor) {
        mainImageView.image = image
        nameLabel.text = name
        view.backgroundColor = color
    }
    
    
}

