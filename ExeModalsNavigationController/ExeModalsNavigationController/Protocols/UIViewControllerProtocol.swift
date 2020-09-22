//
//  UIViewControllerProtocol.swift
//  ExeModalsNavigationController
//
//  Created by Rafael Rios on 9/22/20.
//

import Foundation
import UIKit

protocol UIViewControllerProtocol {
    func presentModal(name: String)
    func dismissModal(name: String)
    func navigateTo(name: String)
}
