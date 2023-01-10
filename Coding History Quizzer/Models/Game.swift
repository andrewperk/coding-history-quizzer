//
//  Game.swift
//  Coding History Quizzer
//
//  Created by Andrew L Perkins on 1/10/23.
//

import Foundation

struct Game {
    private(set) var currentQuestionIndex: Int = 0
    private(set) var isOver: Bool = false
    private(set) var guesses = [Question: Int]()
    private let questions = Question.allQuestions.shuffled()
    
    var numberOfQuestions: Int {
        return questions.count
    }
    
    var currentQuestion: Question {
        return questions[currentQuestionIndex]
    }
    
    var guessCount: (correct: Int, incorrect: Int) {
        var count: (correct: Int, incorrect: Int) = (0, 0)
        for (question, guessedIndex) in guesses {
            if question.correctAnswerIndex == guessedIndex {
                count.correct += 1
            } else {
                count.incorrect += 1
            }
        }
        return count
    }
    
    mutating func makeGuessForCurrentQuestion(atIndex index: Int) {
        guesses[currentQuestion] = index
    }
    
    mutating func updateGameStatus() {
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
        } else {
            isOver = true
        }
    }
}
