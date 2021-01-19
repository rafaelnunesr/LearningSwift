//
//  CustomView.swift
//  IBDesignable_IBInspector
//
//  Created by Rafael Nunes Rios on 1/18/21.
//

import UIKit

@IBDesignable class CustomView: UIView {
    
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupView()
  }
    
  required init?(coder: NSCoder) {
    super.init(coder: coder)
  }
    
  override func prepareForInterfaceBuilder() {
    setupView()
  }
    
  func setupView() {
    self.backgroundColor = color
    self.layer.cornerRadius = cornerRadius
    self.layer.shadowColor = shadowColor.cgColor
    self.layer.shadowRadius = shadowRadius
    self.layer.shadowOpacity = shadowOpacity
    self.layer.borderWidth = borderWidth
    self.layer.borderColor = borderColor.cgColor
  }
    
  @IBInspectable var shadowRadius: CGFloat = 0 {
     didSet {
       self.layer.shadowRadius = shadowRadius
     }
   }
    
    @IBInspectable var color: UIColor = .white {
    didSet {
      self.backgroundColor = color
    }
  }
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
    didSet {
      self.layer.cornerRadius = cornerRadius
    }
  }
    
    @IBInspectable var shadowColor: UIColor = .black {
    didSet {
      self.layer.shadowColor = shadowColor.cgColor
    }
  }
    
    @IBInspectable var shadowOpacity: Float = 0 {
    didSet {
      self.layer.shadowOpacity = shadowOpacity
    }
  }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
    didSet {
      self.layer.borderWidth = borderWidth
    }
  }
    
    @IBInspectable var borderColor: UIColor = .white {
    didSet {
      self.layer.borderColor = borderColor.cgColor
    }
  }
    
}
