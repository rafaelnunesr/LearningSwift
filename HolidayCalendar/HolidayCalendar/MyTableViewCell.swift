//
//  MyTableViewCell.swift
//  HolidayCalendar
//
//  Created by Rafael Nunes Rios on 11/10/20.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var holidayLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    static var identifier: String = "MyTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: MyTableViewCell.identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setup(holiday: String, date: String) {
        self.holidayLabel.text = holiday
        self.dateLabel.text = date
    }
    
}
