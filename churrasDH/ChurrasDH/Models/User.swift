//
//  User.swift
//  ChurrasDH
//
//  Created by Rodrigo Santos on 05/02/21.
//

import Foundation
import UIKit
import CoreData

class User {
    static func getCurrentUser() -> CoreUser? {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let request: NSFetchRequest<CoreUser> = CoreUser.fetchRequest()
        
        do {
            let users = try context.fetch(request)
            print(users.count)
            return users.first ?? nil
        } catch {
            print("Erro ao buscar usuario \(error)")
        }
        return nil
    }
}
