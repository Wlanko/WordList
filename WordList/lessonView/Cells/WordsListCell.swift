//
//  WordsListCell.swift
//  WordList
//
//  Created by Vlad on 27.04.2019.
//  Copyright © 2019 Vlad. All rights reserved.
//

import UIKit

class WordsListCell: UITableViewCell, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var wordsLbl: UILabel!
    @IBOutlet weak var wordsTableView: UITableView!
    
    var list: [WordsList] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData(value: [WordsList]){
        wordsLbl.text = "Words"
        list = value
        
        wordsTableView.delegate = self
        wordsTableView.dataSource = self
        
        DispatchQueue.main.async {
            self.wordsTableView.reloadData()
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == list.count {
            let startLessonCell = tableView.dequeueReusableCell(withIdentifier: "StartLessonCell") as! StartLessonCell
            startLessonCell.setData()
            return startLessonCell
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell") as! WordCell
            cell.setData(value: list[indexPath.row])
            print("Hello")
            return cell
        }
    }
    
}
