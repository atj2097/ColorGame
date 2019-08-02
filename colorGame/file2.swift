//
//  file2.swift
//  colorGame
//
//  Created by God on 7/31/19.
//  Copyright © 2019 God. All rights reserved.
//

struct increment {
    var counter = 0
    var highScore = 0
   mutating func incrementer() {
        counter += 1
    }
    
    mutating func score() {
        if counter >= highScore {
            highScore = counter
        }
    }
    
    mutating func restartGame() {
        counter = 0
    }
    
}
