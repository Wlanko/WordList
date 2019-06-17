//
//  LearnLessonViewController.swift
//  WordList
//
//  Created by Vlad on 23.05.2019.
//  Copyright © 2019 Vlad. All rights reserved.
//

import UIKit

class LearnLessonViewController: UIViewController {
    var list: [WordsList] = []
    var chekList: [Int] = []
    var right = 0
    var wrong = 0
    var count = 0
    var num = 0
    var flag = false
    @IBOutlet weak var wordLable: UILabel!
    @IBOutlet weak var translationLable: UILabel!
    @IBOutlet weak var wordTextField: UITextField!
    @IBOutlet weak var translationTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setData()
    }
    
    func learnLesson(){
        while right - wrong != list.count * 2{
            count = list.count
            randomNumber()
            
        }
        
    }
    
    func randomNumber(){
        while flag != true{
            flag = true
            num = Int.random(in: 0 ..< list.count)
            for i in chekList{
                if i == num{
                    flag = false
                }
                else{
                    chekList.append(num)
                }
            }
        }
    }
    
    func setData(){
        wordLable.text = "en"
        translationLable.text = "ua"
    }

}
