//
//  Game.swift
//  Coding History Quizzer
//
//  Created by Andrew L Perkins on 1/10/23.
//

import Foundation

struct Game {
    // Starts the game at first question, index 0
    private(set) var currentQuestionIndex: Int = 0
    // Starts the game at false, not over
    private(set) var isOver: Bool = false
    // A dictionary of guesses, holding a hashable Question and Int key value pair
    private(set) var guesses = [Question: Int]()
    // All of the questions, shuffled
    private let questions = Question.allQuestions.shuffled()
    
    // Get the number of questions
    var numberOfQuestions: Int {
        return questions.count
    }
    
    // Get the current question
    var currentQuestion: Question {
        return questions[currentQuestionIndex]
    }
    
    // Get how many guesses returns tuple of correct: incorrect guesses
    var guessCount: (correct: Int, incorrect: Int) {
        // establish the count of correct and incorrect guesses at 0
        var count: (correct: Int, incorrect: Int) = (0, 0)
        // loop over the guesses
        for (question, guessedIndex) in guesses {
            // if guess is correct
            if question.correctAnswerIndex == guessedIndex {
                count.correct += 1
            // if guess is incorrect
            } else {
                count.incorrect += 1
            }
        }
        return count
    }
    
    // Makes a guess for the current question, accepts the guessed index
    mutating func makeGuessForCurrentQuestion(atIndex index: Int) {
        guesses[currentQuestion] = index
    }
    
    // Updates game status, progressing to the next question, or ending the game
    mutating func updateGameStatus() {
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
        } else {
            isOver = true
        }
    }
}
