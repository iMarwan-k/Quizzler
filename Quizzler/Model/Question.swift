//
//  Question.swift
//  Quizzler
//
//  Created by Marwan Khalawi on 2/18/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text : String
    let answer: [String]
    let correctAnswer : String
    
    init(q: String, a: [String], correctAnswer:String) {
        text = q
        answer = a
        self.correctAnswer = correctAnswer 
    }
}
