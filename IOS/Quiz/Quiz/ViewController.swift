//
//  ViewController.swift
//  Quiz
//
//  Created by 田宇 on 2018/4/21.
//  Copyright © 2018年 田宇. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var questionLable: UILabel!
    @IBOutlet var answerLable: UILabel!
    
    let questions: [String] = ["From what is cognac made?", "What is 7+7?", "What is the captial of Vermont?"]
    let answers: [String] = ["Grapes", "14", "Montpelier"]
    var currentQuestionIndex: Int = 0
    
    @IBAction func showNextQuestion(sender: AnyObject){
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        let question: String = questions[currentQuestionIndex]
        questionLable.text = question
        answerLable.text = "???"
    }
    @IBAction func showAnswer(sender: AnyObject){
        let answer: String = answers[currentQuestionIndex]
        answerLable.text = answer
    }

}

