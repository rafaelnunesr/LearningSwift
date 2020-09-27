//
//  ViewController.swift
//  FastEmporium
//
//  Created by Rafael Rios on 9/16/20.
//  Copyright © 2020 Rafael Rios. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    // MARK: TEXTFIELDS
    @IBOutlet weak var textFieldProduct: UITextField!
    @IBOutlet weak var textFieldQuantity: UITextField!
    
    // MARK: BUTTONS OULETS
    @IBOutlet weak var buttonSave: UIButton!
    @IBOutlet weak var buttonClear: UIButton!
    @IBOutlet weak var buttonDelete: UIButton!
    
    @IBOutlet weak var labelList: UILabel!
    
    var products = Products()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        enableDisableASaveClearButton()
        hideButtonDelete()
        
        textFieldProduct.delegate = self
        textFieldQuantity.delegate = self
    }
    
    // MARK: Button Save
    @IBAction func buttonSave(_ sender: Any) {
        
        let productName = getTextFieldProductName()
        if products.ifProductExists(productName: productName) && ifTextFieldQuantityHasData(){
            
            let newQuantity = getTextFieldQuantity()
            let oldQuantity = products.getProduct(productName: productName)!.quantity
            
            products.updateProductQuantity(productName: productName, newQuantity: Int(newQuantity)!)
            
            alert(title: "Produto atualizado", message: "Atualizado a quantidade de \(oldQuantity) para \(newQuantity)")
            
            hideButtonDelete()
            
        }else {
            
            if ifTextFieldQuantityHasData() {
                let quantity = getTextFieldQuantity()
                
                products.addNewProduct(productName: productName, quantity: Int(quantity)!)
                
                alert(title: "Produto Adicionado", message: "Produto Adicionado com sucesso")
            }
            
        }
        enableDisableASaveClearButton()
        clearFields()
        setListLabel()
        setTitleSaveButtonToSave()
    }
    
    @IBAction func buttonClear(_ sender: Any) {
        clearFields()
        setTitleSaveButtonToSave()
    }
    
    @IBAction func buttonDelete(_ sender: Any) {
        
        let productName = getTextFieldProductName()
        
        if products.removeProduct(productName: productName) {
            alert(title: "Produto removido", message: "O produto \(productName) foi removido com sucesso.")
        }else {
            alert(title: "Erro", message: "Não existe o produto \(productName).")
        }
        
        enableDisableASaveClearButton()
        hideButtonDelete()
        clearFields()
        setListLabel()
        setTitleSaveButtonToSave()
        
    }
    
    private func clearFields() {
        textFieldProduct.text = ""
        textFieldQuantity.text = ""
        labelList.text = ""
    }
    
    private func alert(title: String, message msg: String) {
        
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)

        let okAction = UIAlertAction(title: "OK", style: .cancel) { (UIAlertAction) in
        }
        
        alert.addAction(okAction)
        self.present(alert, animated: true) {
           
        }
    }
    
}
