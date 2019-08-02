//
//  File.swift
//  colorGame
//
//  Created by God on 7/30/19.
//  Copyright © 2019 God. All rights reserved.
//

import Foundation
import UIKit

let something = RGBGenerator()
struct RGBGenerator {
    let randRed = CGFloat.random(in: 0...1)
    let randGreen = CGFloat.random(in: 0...1)
    let randBlue = CGFloat.random(in: 0...1)
    let alpha = 1.0
    
    func colorGenerator() -> UIColor {
        return UIColor(red: randRed, green: randGreen, blue: randBlue, alpha: 1.0)
    }
    
    func greatestValue() -> CGFloat {
        var greatest: CGFloat = 0.0
        
        if randRed > randGreen && randRed > randBlue {
            greatest = randRed
        } else if randGreen > randRed && randGreen > randBlue {
            greatest = randGreen
        } else if randBlue > randRed && randBlue > randGreen {
            greatest = randBlue
        }
        return greatest
    }
    
    
    
    
    
}

let newSomething = something.colorGenerator()
//let red = UIColor(red: 1.00, green: 0.00, blue: 0.00, alpha: 1.00)
//let green = UIColor(red: 0.00, green: 1.00, blue: 0.00, alpha: 1.00)
//let blue = UIColor(red: 0.00, green: 0.00, blue: 1.00, alpha: 1.00)
