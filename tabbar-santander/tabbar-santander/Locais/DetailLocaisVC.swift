//
//  MapDetailsVC.swift
//  tabbar-santander
//
//  Created by Rafael Nunes Rios on 1/13/21.
//

import UIKit
import MapKit

class DetailLocaisVC: UIViewController {
    
    var annotationSelected: MKAnnotation?
    
    @IBOutlet weak var backgroundViewLocal: UIView!
    @IBOutlet weak var localImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var latLabel: UILabel!
    @IBOutlet weak var longLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }
    
    private func setup() {
        
        if let _annotation = self.annotationSelected {
            self.titleLabel.text = _annotation.title ?? ""
            self.subtitleLabel.text = _annotation.subtitle ?? ""
            self.latLabel.text = "latitude: \(_annotation.coordinate.latitude ?? 0)"
            self.longLabel.text = "longitude: \(_annotation.coordinate.longitude ?? 0)"
            self.localImage.image = UIImage(named: (_annotation.title ?? "") ?? "")
            
            self.localImage.addBlurEffect(style: .extraLight)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 5) {
            self.localImage.removeBlurEffect()
        }
    }
    
}
