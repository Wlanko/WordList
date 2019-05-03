//
//  ViewController.swift
//  WordList
//
//  Created by Vlad on 03.04.2019.
//  Copyright © 2019 Vlad. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    var lessonsIdsList: Array<String> = []
    var lessonsList: Array<lesson> = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        getLessonsIds(callback: { (list) in
            for i in 0..<list.count{
                self.lessonsIdsList.append(list[i])
            }
            print(self.lessonsIdsList)
            self.getLessons()
        })
    }
    func getLessons (){
        for lessonId in lessonsIdsList{
            getLessonById(id: lessonId, callback: { (lesson) in
                self.lessonsList.append(lesson)
                self.printLessons()
            })
        }
//        for i in 0..<lessonsIdsList.count{
//            getLessonById(id: lessonsIdsList[i], callback: { (lesson) in
//                self.lessonsList.append(lesson)
//            })
//        }
//
    }
    
    func printLessons(){
        for lesson in lessonsList{
            print(lesson)
        }
    }

}

