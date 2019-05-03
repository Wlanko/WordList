//
//  NetworkManager.swift
//  WordList
//
//  Created by Vlad on 14.04.2019.
//  Copyright © 2019 Vlad. All rights reserved.
//

import Foundation
import Firebase
import CodableFirebase



func getLessonsIds(callback: @escaping (Array<String>) -> Void){
    var ref: DatabaseReference!
    ref = Database.database().reference()
    ref.observeSingleEvent(of: .value) { (snapshot) in
        guard let value = snapshot.value else { return }
        do {
            let model = try FirebaseDecoder().decode(Lessons.self, from: value)
            callback(Array(model.lessons.keys))
            //print(model.lessons.keys)
        } catch let error {
            print(error)
        }
    }
}

func getLessonById(id: String, callback: @escaping (Lesson) -> Void){
    var ref: DatabaseReference!
    ref = Database.database().reference()
    ref.child("lessons").child(id).observeSingleEvent(of: .value, with: { (snapshot) in
        guard let value = snapshot.value else { return }
        do {
            let model = try FirebaseDecoder().decode(Lesson.self, from: value)
            var response: Lesson?
            response = model
            callback(model)
        } catch let error {
            print(error)
        }
    })
}