//
//  ViewController.swift
//  WordList
//
//  Created by Vlad on 03.04.2019.
//  Copyright © 2019 Vlad. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var lessonsIdsList: Array<String> = []
    var lessonsIds: Array<String> = []
    var lessonsList: Array<Lesson> = []

    @IBOutlet weak var lessonsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getLessonsIds(callback: { (list) in
            for i in 0..<list.count{
                self.lessonsIds.append(list[i])
            }
            self.lessonsIdsList = Array(self.lessonsIds.reversed())
            print(self.lessonsIdsList)
            self.getLessons()
        })
    }
    
    func getLessons (){
        for lessonId in lessonsIdsList{
            getLessonById(id: lessonId, callback: { (lesson) in
                self.lessonsList.append(lesson)
                self.reloadData()
                self.printLessons()
                
            })
        }
//
    }
    
    func reloadData(){
        DispatchQueue.main.async{
            self.lessonsTableView.reloadData()
        }
    }
    
    func printLessons(){
        for lesson in lessonsList{
            print(lesson)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lessonsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "lessonCell", for: indexPath) as! LessonCell
        
        cell.setData(lesson: self.lessonsList[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "LessonViewController") as! LessonViewController
        let n: Int = indexPath.row
        vc.lesson = lessonsList[n]
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

