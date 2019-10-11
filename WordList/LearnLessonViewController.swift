//
//  LearnLessonViewController.swift
//  WordList
//
//  Created by Vlad on 23.05.2019.
//  Copyright © 2019 Vlad. All rights reserved.
//

import UIKit

class LearnLessonViewController: UIViewController, UITextFieldDelegate {
    var list: [WordsList] = []
    var checkList: [WordsList] = []
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
        
        checkList = list
        translationTextField.delegate = self
        learnLesson()
        setData()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        checkWord()
        return true
    }
    
    func learnLesson(){
        if right - wrong != list.count * 2{
            randomNumber()
            wordTextField.text = checkList[num].en
        }
        
    }
    
    func checkWord(){
        if translationTextField.backgroundColor != .white{
            translationTextField.backgroundColor = .white
            translationTextField.text = nil
            checkList.remove(at: num)
            learnLesson()
        }
        else{
            if translationTextField.text == checkList[num].ua{
                translationTextField.backgroundColor = .green
                right += 1
            }
            else{
                translationTextField.backgroundColor = .red
                let str = translationTextField.text
                translationTextField.text = "\((str)!): \((checkList[num].ua)!)"
                wrong += 1
            }
        }
    }
    
    func randomNumber(){
        fillCheckList()
        num = Int.random(in: 0 ..< checkList.count)
        
        count += 1
        print(checkList, num)
    }
    
    func fillCheckList(){
        if checkList.count == 0{
            checkList = list
        }
    }
    
    func setData(){
        wordLable.text = "en"
        translationLable.text = "ua"
    }

}
