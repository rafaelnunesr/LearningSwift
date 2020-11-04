//
//  SelectionScreen.swift
//  DelegateProtocol
//
//  Created by Rafael Nunes Rios on 11/3/20.
//

import UIKit

protocol SideSelectionDelegate {
    func didTapChoice(image: UIImage, name: String, color: UIColor)
}

class SelectionScreen: UIViewController {
    
    
    var selectionDelegate: SideSelectionDelegate!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func imperialButtonTapped(_ sender: UIButton) {
        selectionDelegate.didTapChoice(image: UIImage(named: "image1")!, name: "Image 1", color: .red)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func rebelButtonTapped(_ sender: UIButton) {
        selectionDelegate.didTapChoice(image: UIImage(named: "image2")!, name: "Image 2", color: .cyan)
        dismiss(animated: true, completion: nil)
    }


}
