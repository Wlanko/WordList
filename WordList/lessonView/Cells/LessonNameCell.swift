//
//  LessonNameCell.swift
//  WordList
//
//  Created by Vlad on 27.04.2019.
//  Copyright © 2019 Vlad. All rights reserved.
//

import UIKit

class LessonNameCell: UITableViewCell {
    @IBOutlet weak var nameLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData(value: String){
        nameLbl.text = value
    }

}
