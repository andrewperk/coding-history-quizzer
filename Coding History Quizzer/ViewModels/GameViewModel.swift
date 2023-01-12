//
//  GameViewModel.swift
//  Coding History Quizzer
//
//  Created by Andrew L Perkins on 1/11/23.
//

import Foundation

class GameViewModel: ObservableObject {
    // Published properties
    @Published private var game = Game()
    
    // Internal properties
    var currentQuestion: Question {
        game.currentQuestion
    }
    
    var questionProgressText: String {
        "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"
    }
    
    var guessWasMade: Bool {
        if let _ = game.guesses[currentQuestion] {
            return true
        } else {
            return false
        }
    }
    
    func makeGuess(atIndex index: Int) {
        game.makeGuessForCurrentQuestion(atIndex: index)
    }
    
    func displayNextScreen() {
        game.updateGameStatus()
    }
}
