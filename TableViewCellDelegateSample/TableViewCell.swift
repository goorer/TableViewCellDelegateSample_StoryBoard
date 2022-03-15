//
//  TableViewCell.swift
//  TableViewCellDelegateSample
//
//  Created by Goorer on 2022/03/15.
//

import UIKit

protocol TableViewCellDelegate: AnyObject{
    func clickButton()
}

class TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    var tableViewCellDelegate : TableViewCellDelegate?
    
    @IBAction func clickButton(_ sender: Any) {
        tableViewCellDelegate?.clickButton()
    }
    
}
