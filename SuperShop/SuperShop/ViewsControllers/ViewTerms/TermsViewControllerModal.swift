//
//  TermsViewControllerModal.swift
//  SuperShop
//
//  Created by Rafael Rios on 9/29/20.
//

import UIKit

class TermsViewControllerModal: UIViewController {

    @IBOutlet weak var textLabelTitle: UILabel!
    @IBOutlet weak var textLabelTerms: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    func setTextLabelTitle() {
        textLabelTitle.text = "Terms and Conditions"
    }
    
    func setTextLabelTerms() {
        textLabelTerms.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin elementum dolor mauris, a convallis nisi iaculis sed. Mauris at venenatis felis. Ut scelerisque volutpat pretium. Suspendisse porta risus neque, vel consectetur lorem accumsan a. Duis porta ligula est, eget pretium lacus euismod at. Donec ultrices dolor eget turpis porta pharetra. Pellentesque blandit, arcu at rhoncus pulvinar, mauris odio interdum ligula, in luctus ligula mi ut lorem. Praesent id facilisis ligula. Vestibulum malesuada, nunc id mattis congue, leo sapien ultrices tellus, nec rhoncus erat arcu non metus. Nunc ultrices dui suscipit nisl iaculis consequat. Donec vel magna eget metus sollicitudin tristique."
    }
    

}
