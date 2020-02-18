//
//  QuizBrain.swift
//  Quizzler
//
//  Created by Marwan Khalawi on 2/18/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

struct QuizBrain {
    let quiz = [
       Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]
    
    var questionNum = 0
    var scoreCredit = 0
    
    func getQuestionText() -> String {
        return quiz[questionNum].text
    }
    
    func getAnswers() -> [String] {
        return quiz[questionNum].answer
    }
    
    func getProgressBarProgress() -> Float {
        return Float(questionNum + 1) / Float(quiz.count)
    }
    
    func getScore() -> Int {
        return scoreCredit
    }
    
    /*
     Because we are changing a struct proparty within the struct,
     we need to mark the method as mutating which mean we make self behave as var not as let which is the default status
     */
    mutating func nextQuestion() {
        if questionNum + 1 < quiz.count {
            questionNum += 1
        } else {
            questionNum = 0
            scoreCredit = 0
        }
    }
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool{
        if userAnswer == quiz[questionNum].correctAnswer {
            scoreCredit += 1
            return true
        } else {
            scoreCredit = scoreCredit > 0 ? scoreCredit - 1 : 0
            return false
        }
    }
}
