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



//    @IBAction func goToNextController(_ sender: UIButton) {
//         stopAudio()
//         // Perform the logic to jump to the next controller here
//     }

//     @IBAction func dismissController(_ sender: UIButton) {
//         stopAudio()
//         dismiss(animated: true, completion: nil)
//     }
