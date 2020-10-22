//
//  ViewController.swift
//  PickerView_Challenge
//
//  Created by Rafael Nunes Rios on 10/21/20.
//

import UIKit

class ViewController: UIViewController {
    
    var arrayColors: [String] = ["white", "green", "red", "blue", "yellow"]
    
    @IBOutlet weak var colorPickerView: UIPickerView!
    @IBOutlet weak var textLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.colorPickerView.delegate = self
        self.colorPickerView.dataSource = self
        
        self.textLabel.text = "Background is white"
        
    }
    
    private func changeBackgroundColor(color: UIColor?) {
        if let color = color {
            view.backgroundColor = color
        }
    }
    
    private func changeTextLabelColor(color: UIColor?) {
        if let color = color {
            self.textLabel.textColor = color
        }
    }
    
    private func setTextLabel(text: String?) {
        if let text = text {
            self.textLabel.text = "Background is \(text)"
        }
    }


}

extension ViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let colorSelected = arrayColors[row]
        
        switch colorSelected {
        case "white":
            changeBackgroundColor(color: UIColor.white)
            changeTextLabelColor(color: UIColor.black)
        case "green":
            changeBackgroundColor(color: UIColor.green)
            changeTextLabelColor(color: UIColor.yellow)
        case "red":
            changeBackgroundColor(color: UIColor.red)
            changeTextLabelColor(color: UIColor.white)
        case "blue":
            changeBackgroundColor(color: UIColor.blue)
            changeTextLabelColor(color: UIColor.red)
        case "yellow":
            changeBackgroundColor(color: UIColor.yellow)
            changeTextLabelColor(color: UIColor.red)
        default:
            break
        }
        
        setTextLabel(text: colorSelected)
        
    }
}

extension ViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.arrayColors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrayColors[row]
    }
    
    
}

