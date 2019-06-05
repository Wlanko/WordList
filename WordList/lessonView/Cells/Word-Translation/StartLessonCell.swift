//
//  StartLessonCell.swift
//  WordList
//
//  Created by Vlad on 02.05.2019.
//  Copyright © 2019 Vlad. All rights reserved.
//

import UIKit

class StartLessonCell: UITableViewCell {
    var vc: LessonViewController!
    var list: [WordsList] = []
    var viewController: UIViewController?
    
    @IBOutlet weak var startLessonButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func StartLesson(_ sender: Any) {
        print("1")
        
        vc.startLesson()
    }
    
    
    func setData(wList: [WordsList], viewController: LessonViewController) {
        vc = viewController
        startLessonButton.layer.cornerRadius = 5
        list = wList
    }

}
