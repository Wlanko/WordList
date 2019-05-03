//
//  LessonViewController.swift
//  WordList
//
//  Created by Vlad on 27.04.2019.
//  Copyright © 2019 Vlad. All rights reserved.
//

import UIKit

class LessonViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var LessonInfoTableView: UITableView!
    var lesson: Lesson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    func setLesson(l: Lesson?){
        lesson = l
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LessonNameCell") as! LessonNameCell
        
        
        switch indexPath.row {
        case 1:
            let topicCell = tableView.dequeueReusableCell(withIdentifier: "LessonTopicCell") as! LessonTopicCell
            topicCell.setData(value: self.lesson?.topic ?? "None")
            return topicCell
        case 2:
            let creatorIdCell = tableView.dequeueReusableCell(withIdentifier: "CreatorIdCell") as! CreatorIdCell
            creatorIdCell.setData(value: self.lesson?.ownerid ?? "None")
            return creatorIdCell
        case 3:
            let wordsListCell = tableView.dequeueReusableCell(withIdentifier: "WordsListCell") as! WordsListCell
            wordsListCell.setData(value: self.lesson?.list ?? [])
            return wordsListCell
            
        default:
            cell.setData(value: self.lesson?.name ?? "none")
            return cell
        }
    }
}
