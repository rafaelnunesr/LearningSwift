//
//  ViewController.swift
//  PickerView
//
//  Created by Rafael Nunes Rios on 10/21/20.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var myPickerView: UIPickerView!
    @IBOutlet weak var resultLabel: UILabel!
    
    var arrayPickerView = ["Rafael", "Pedro", "Paulo", "Jose"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myPickerView.delegate = self
        self.myPickerView.dataSource = self
        self.myPickerView.selectRow(3, inComponent: 0, animated: true)
        self.resultLabel.text = self.arrayPickerView[myPickerView.selectedRow(inComponent: 0)]
    }


}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.arrayPickerView.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.arrayPickerView[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        self.resultLabel.text = self.arrayPickerView[row]
        
    }
}
