//
//  Model.swift
//  QuizApp
//
//  Created by Mahesh Prasad on 21/04/20.
//  Copyright © 2020 CreatesApp. All rights reserved.
//

import Foundation
import UIKit

struct QuizQuestion {
    var correctAnswer: Bool
    var question: String
    var image: UIImage
}

class Quiz {
   private var question: [QuizQuestion] = [
        QuizQuestion(correctAnswer: true, question: "Is this a tree", image: UIImage(named: "tree")!),
        QuizQuestion(correctAnswer: false, question: "Is this a dog?", image: UIImage(named: "car")!),
        QuizQuestion(correctAnswer: false, question: "Is this a person", image: UIImage(named: "mug")!)
    ]
    
    private var score: Int = 0
    private var questionIndex: Int = 0
    func getScore() -> String {
        
        return "\(score) \\ \(question.count)"
        
    }
    
    func getQuestion() -> QuizQuestion {
        return question[questionIndex]
    }
    
    func check(answer: Bool) -> Bool {
        let question = getQuestion()
        
        if question.correctAnswer == answer {
            score += 1
            
            return true
        }
        
        return false
    }
    func nextQuestion() -> Bool {
        questionIndex += 1
        
        if questionIndex > question.count - 1 {
            return false
        }
        
        return true
    }
    
    func reset() {
        questionIndex = 0
        
        score = 0
    }
    
}
