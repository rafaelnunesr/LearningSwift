//
//  ViewControllerUITableViewDelegate.swift
//  FastEmporium
//
//  Created by Rafael Rios on 9/26/20.
//  Copyright © 2020 Rafael Rios. All rights reserved.
//

import Foundation
import UIKit

extension ViewController: UITableViewDelegate {
    /*
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int) {
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int) {
        tableView.reloadData()
    }

    func tableView(_ tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int) {
        tableView.reloadData()
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        tableView.reloadData()
        return 1
    }
    

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        tableView.reloadData()
        return 1
    }

    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        tableView.reloadData()
        return 1
    }
 
     

    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        tableView.reloadData()
        return 1
    }

    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        tableView.reloadData()
        return 1
    }

    func tableView(_ tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat {
        tableView.reloadData()
        return 1
    }
 
 
 
 
    */
     
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        tableView.reloadData()
        return nil
    }
    
    /*
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView?{
        tableView.reloadData()
        return nil
    }
     
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        tableView.reloadData()
        return true
    }

    
    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        tableView.reloadData()
    }

    */
     
}
