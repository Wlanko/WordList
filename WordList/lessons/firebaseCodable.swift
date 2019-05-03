//
//  firebaseCodable.swift
//  WordList
//
//  Created by Vlad on 14.04.2019.
//  Copyright © 2019 Vlad. All rights reserved.
//

import Foundation
import CodableFirebase

struct lessons: Codable{
    let lessons: Dictionary<String, lesson>
}
struct lesson: Codable{
    var name: String
    var list: [VladikMudak]
    var ownerid: String
}

struct VladikMudak: Codable {
    var en: String?
    var ru: String?
    var ua: String?
}
