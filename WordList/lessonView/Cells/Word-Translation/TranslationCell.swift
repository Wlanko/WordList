//
//  TranslationCell.swift
//  WordList
//
//  Created by Vlad on 27.04.2019.
//  Copyright © 2019 Vlad. All rights reserved.
//

import UIKit

class WordCell: UITableViewCell {
    @IBOutlet weak var translationLbl: UILabel!
    @IBOutlet weak var wordLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
    }
    
    func setData(value: WordsList){
        translationLbl.text = value.ua
        wordLbl.text = value.en
    }

}
