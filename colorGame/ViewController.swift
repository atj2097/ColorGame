//
//  ViewController.swift
//  colorGame
//
//  Created by God on 7/30/19.
//  Copyright © 2019 God. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var veiw: UIView!
    
    var scoreTracker = increment()
    
    @IBOutlet weak var blueButton: UIButton!
    
    @IBOutlet weak var redButton: UIButton!
    
    @IBOutlet weak var winsNumber: UILabel!
    
    @IBOutlet weak var greenButton: UIButton!
    
    @IBOutlet weak var lossesNumber: UILabel!
    
    
    @IBOutlet weak var textWinOrLoss: UITextView!
    
    @IBOutlet weak var gameView: UIView!
    
       var rgbGreatest = RGBGenerator()
    func  colorGenerator() {
        rgbGreatest = RGBGenerator()
        gameView.backgroundColor = rgbGreatest.colorGenerator()
    }
    func disableButton() {
        blueButton.isEnabled = false
        greenButton.isEnabled = false
        redButton.isEnabled = false
        blueButton.alpha = 0.5
        redButton.alpha = 0.5
        greenButton.alpha = 0.5
    }
    
    func enableButton() {
        blueButton.isEnabled = true
        greenButton.isEnabled = true
        redButton.isEnabled = true
    }
    
    @IBAction func newColor(_ sender: UIButton) {
        colorGenerator()
        enableButton()
    }
    @IBAction func blueButton(_ sender: UIButton) {
//        var rgbGreatest1 = RGBGenerator()
        switch rgbGreatest.greatestValue() {
        case rgbGreatest.randRed:
    textWinOrLoss.text = "You Lose!"
    scoreTracker.score()
    lossesNumber.text = "High Score \(scoreTracker.highScore)"
    scoreTracker.restartGame()
          disableButton()
             winsNumber.text = "Score: \(scoreTracker.counter)"
        case rgbGreatest.randGreen:
            scoreTracker.score()
            lossesNumber.text = "High Score \(scoreTracker.highScore)"
            scoreTracker.restartGame()
            winsNumber.text = "Score: \(scoreTracker.counter)"
            textWinOrLoss.text = "You Lose!"
             lossesNumber.text = "High Score \(scoreTracker.highScore)"
            disableButton()
          
            
        case rgbGreatest.randBlue:
            textWinOrLoss.text = "You Win!"
//             scoreTracker.score()
            disableButton()
            scoreTracker.incrementer()
            winsNumber.text = "Score: \(scoreTracker.counter)"
            lossesNumber.text = "High Score \(scoreTracker.highScore)"
        
//            gameView.backgroundColor = colorGenerator()
        default:
            textWinOrLoss.text = ""
        }
        
     
    }
    
    @IBAction func redButton(_ sender: UIButton) {
//        var rgbGreatest2 = RGBGenerator()
        switch rgbGreatest.greatestValue() {
        case rgbGreatest.randRed:
            textWinOrLoss.text = "You Win!"
//             scoreTracker.score()
//            winsNumber.text = "Wins \()"
            scoreTracker.incrementer()
            winsNumber.text = "Score: \(scoreTracker.counter)"
            lossesNumber.text = "High Score \(scoreTracker.highScore)"
           disableButton()
        case rgbGreatest.randGreen:
             scoreTracker.score()
             lossesNumber.text = "High Score \(scoreTracker.highScore)"
            scoreTracker.restartGame()
             winsNumber.text = "Score: \(scoreTracker.counter)"
            textWinOrLoss.text = "You Lose!"
            
            disableButton()
        case rgbGreatest.randBlue:
             scoreTracker.score()
             lossesNumber.text = "High Score \(scoreTracker.highScore)"
            scoreTracker.restartGame()
             winsNumber.text = "Score: \(scoreTracker.counter)"
            textWinOrLoss.text = "You Lose!"
       
         disableButton()
        default:
            textWinOrLoss.text = ""
        }

    }
    
    
//    @IBAction func newGame(_ sender: UIButton) {
//        colorGenerator()
//        enableButton()
//    }
    @IBAction func greenButton(_ sender: UIButton) {
//        var rgbGreatest3 = RGBGenerator()
        switch rgbGreatest.greatestValue() {
        case rgbGreatest.randRed:
             scoreTracker.score()
             lossesNumber.text = "High Score \(scoreTracker.highScore)"
            scoreTracker.restartGame()
            textWinOrLoss.text = "You Lose!"
         winsNumber.text = "Score: \(scoreTracker.counter)"
            disableButton()
        case rgbGreatest.randGreen:
//             scoreTracker.score()
            textWinOrLoss.text = "You Win!"
            disableButton()
            scoreTracker.incrementer()
            winsNumber.text = "Score: \(scoreTracker.counter)"
            lossesNumber.text = "High Score \(scoreTracker.highScore)"
//            gameView.backgroundColor = colorGenerator2()
        case rgbGreatest.randBlue:
             scoreTracker.score()
             lossesNumber.text = "High Score \(scoreTracker.highScore)"
            scoreTracker.restartGame()
            textWinOrLoss.text = "You Lose!"
            disableButton()
             winsNumber.text = "Score: \(scoreTracker.counter)"
        default:
            textWinOrLoss.text = ""
        }

    }
    
    @IBOutlet weak var changingView: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        veiw.self.backgroundColor
colorGenerator()

    }


}

