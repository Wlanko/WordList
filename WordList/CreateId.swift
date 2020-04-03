//
//  CreateId.swift
//  WordList
//
//  Created by Vlad on 05.03.2020.
//  Copyright © 2020 Vlad. All rights reserved.
//

import Foundation

func randomLetters(id: String) -> String {
    let charCode = Int.random(in: 97...122)
    let num = Int.random(in: 0 ..< 6)
    let letter = Character(UnicodeScalar(charCode)!)
    
    var idList = Array(id)
    
    idList[num] = letter
    
    return String(idList)
}

func CreateId() ->String {
    let num = Int.random(in: 99999 ..< 1000000)
    var id = String(num)
    for i in (0..<3){
        id = randomLetters(id: id)
    }
    print("ID")
    print(id)
    
    return id
}
