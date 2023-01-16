//
//  Question.swift
//  Coding History Quizzer
//
//  Created by Andrew L Perkins on 1/8/23.
//

import Foundation

struct Question: Hashable { // Add Hashable Conformance
    var questionText: String
    var possibleAnswers: [String]
    var correctAnswerIndex: Int
    
    // static type property to hold the questions
    static var allQuestions = [
        Question(questionText: "Who invented the World Wide Web",
                 possibleAnswers: [
                    "Steve Jobs",
                    "Linus Torvalds",
                    "Bill Gates",
                    "Tim B.-Lee"
                 ],
                 correctAnswerIndex: 3),
        Question(questionText: "What was the first object oriented programming language?",
                 possibleAnswers: [
                    "Simula",
                    "Python",
                    "Swift",
                    "C"
                 ],
                 correctAnswerIndex: 0),
        Question(questionText: "Who invented FORTRAN?",
                 possibleAnswers: [
                    "IBM",
                    "Apple",
                    "John McCarthy",
                    "Konrad Zuse"
                 ],
                 correctAnswerIndex: 0),
        Question(questionText: "What year was COBOL released?",
                 possibleAnswers: [
                    "2002",
                    "1943",
                    "1959",
                    "1987"
                 ],
                 correctAnswerIndex: 2),
        Question(questionText: "Which programming language was developed in the 1990s?",
                 possibleAnswers: [
                    "C++",
                    "Ruby",
                    "Swift",
                    "Pascal"
                 ],
                 correctAnswerIndex: 1)
    ]
}
