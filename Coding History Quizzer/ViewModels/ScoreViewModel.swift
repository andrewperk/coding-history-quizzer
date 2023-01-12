//
//  ScoreViewModel.swift
//  Coding History Quizzer
//
//  Created by Andrew L Perkins on 1/11/23.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
