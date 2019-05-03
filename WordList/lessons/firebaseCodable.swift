//
//  firebaseCodable.swift
//  WordList
//
//  Created by Vlad on 14.04.2019.
//  Copyright © 2019 Vlad. All rights reserved.
//

import Foundation
import CodableFirebase

struct Lessons: Codable{
    let lessons: Dictionary<String, Lesson>
}
struct Lesson: Codable{
    var name: String
    var list: [WordsList]
    var topic: String
    var ownerid: String
}

struct WordsList: Codable {
    var en: String?
    var ru: String?
    var ua: String?
}
