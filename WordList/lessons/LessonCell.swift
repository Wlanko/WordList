//
//  LessonCell.swift
//  WordList
//
//  Created by Vlad on 23.04.2019.
//  Copyright © 2019 Vlad. All rights reserved.
//

import UIKit

class LessonCell: UITableViewCell {
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var topicLable: UILabel!
    @IBOutlet weak var authorIdLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData(lesson: Lesson){
        nameLable.text = lesson.name
        topicLable.text = lesson.topic
        authorIdLable.text = lesson.ownerid
    }

}
