//
//  ViewController.swift
//  DatePicker
//
//  Created by Rafael Nunes Rios on 10/20/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func myDatePicker(_ sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.short
        dateFormatter.locale = Locale(identifier: "pt_BR")
        
        let strDate = dateFormatter.string(from: datePicker.date)
        print(strDate)
        
        let strDateSender = dateFormatter.string(from: sender.date)
        print(strDateSender)
        
        let str = datePicker.date
        print(str)
        
        textLabel.text = strDateSender
        
    }
}

