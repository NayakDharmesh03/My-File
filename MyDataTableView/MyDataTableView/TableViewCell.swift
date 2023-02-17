//
//  TableViewCell.swift
//  MyDataTableView
//
//  Created by Bhautik Dudhat on 08/02/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var resultLbl: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
