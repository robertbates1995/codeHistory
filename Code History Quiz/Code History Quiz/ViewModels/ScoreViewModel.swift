//
//  ScoreViewModel.swift
//  Code History Quiz
//
//  Created by Robert Bates on 9/4/22.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
