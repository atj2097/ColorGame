//
//  ViewController.swift
//  colorGame
//
//  Created by God on 7/30/19.
//  Copyright © 2019 God. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorveiw: UIView!
    
    var scoreTracker = increment()
    
    @IBOutlet weak var blueButton: UIButton!
    lazy var buttonBlue: UIButton =  {
        let buttonBlue = UIButton()
        buttonBlue.titleLabel?.text = "Blue"
        buttonBlue.titleLabel?.textColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        buttonBlue.backgroundColor = .blue
        buttonBlue.frame.size.width = 60
        buttonBlue.frame.size.height = 60
        return buttonBlue
        }()
    lazy var buttonRed: UIButton =  {
        let buttonRed = UIButton()
        buttonRed.backgroundColor = .red
        buttonRed.titleLabel?.text = "Red"
        buttonRed.titleLabel?.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return buttonRed
    }()
    lazy var buttonGreen: UIButton =  {
        let buttonGreen = UIButton()
        buttonGreen.titleLabel?.text = "Green"
        buttonGreen.backgroundColor = .green
        buttonGreen.titleLabel?.textColor = #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
        return buttonGreen
    }()
    lazy var viewOfGame: UIView = {
      var viewOfGame = UIView(frame: CGRect(x: 100, y: 150, width: 200, height: 200))
        viewOfGame.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        return viewOfGame
    }()
    
    lazy var winsLabel: UILabel! = {
        let winsLabel = UILabel()
        winsLabel.text = "Text"
        winsLabel.textAlignment = .center
    
        return winsLabel
    }()
    lazy var textWinOrLoss: UITextView = {
        let textWinOrLoss = UITextView()
        textWinOrLoss.text = "Stuff"
        return textWinOrLoss
    }()
    
    lazy var lossesNumber: UILabel = {
        let lossesNumber = UILabel()
        return lossesNumber
    }()
    
//    @IBOutlet weak var buttonRed: UIButton!
    
//    @IBOutlet weak var winsLabel: UILabel!
    
//    @IBOutlet weak var buttonGreen: UIButton!
    
//    @IBOutlet weak var lossesNumber: UILabel!
    
    
//    @IBOutlet weak var textWinOrLoss: UITextView!
//
//    @IBOutlet weak var gameView: UIView!
    
       var rgbGreatest = RGBGenerator()
    func  colorGenerator() {
        rgbGreatest = RGBGenerator()
        viewOfGame.backgroundColor = rgbGreatest.colorGenerator()
    }
    func disableButton() {
        blueButton.isEnabled = false
        buttonGreen.isEnabled = false
        buttonRed.isEnabled = false
        blueButton.alpha = 0.5
        buttonRed.alpha = 0.5
        buttonGreen.alpha = 0.5
    }
    
    func enableButton() {
        blueButton.isEnabled = true
        buttonGreen.isEnabled = true
        buttonRed.isEnabled = true
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
             winsLabel.text = "Score: \(scoreTracker.counter)"
        case rgbGreatest.randGreen:
            scoreTracker.score()
            lossesNumber.text = "High Score \(scoreTracker.highScore)"
            scoreTracker.restartGame()
            winsLabel.text = "Score: \(scoreTracker.counter)"
            textWinOrLoss.text = "You Lose!"
             lossesNumber.text = "High Score \(scoreTracker.highScore)"
            disableButton()
          
            
        case rgbGreatest.randBlue:
            textWinOrLoss.text = "You Win!"
//             scoreTracker.score()
            disableButton()
            scoreTracker.incrementer()
            winsLabel.text = "Score: \(scoreTracker.counter)"
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
            winsLabel.text = "Score: \(scoreTracker.counter)"
            lossesNumber.text = "High Score \(scoreTracker.highScore)"
           disableButton()
        case rgbGreatest.randGreen:
             scoreTracker.score()
             lossesNumber.text = "High Score \(scoreTracker.highScore)"
            scoreTracker.restartGame()
             winsLabel.text = "Score: \(scoreTracker.counter)"
            textWinOrLoss.text = "You Lose!"
            
            disableButton()
        case rgbGreatest.randBlue:
             scoreTracker.score()
             lossesNumber.text = "High Score \(scoreTracker.highScore)"
            scoreTracker.restartGame()
             winsLabel.text = "Score: \(scoreTracker.counter)"
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
         winsLabel.text = "Score: \(scoreTracker.counter)"
            disableButton()
        case rgbGreatest.randGreen:
//             scoreTracker.score()
            textWinOrLoss.text = "You Win!"
            disableButton()
            scoreTracker.incrementer()
            winsLabel.text = "Score: \(scoreTracker.counter)"
            lossesNumber.text = "High Score \(scoreTracker.highScore)"
//            gameView.backgroundColor = colorGenerator2()
        case rgbGreatest.randBlue:
             scoreTracker.score()
             lossesNumber.text = "High Score \(scoreTracker.highScore)"
            scoreTracker.restartGame()
            textWinOrLoss.text = "You Lose!"
            disableButton()
             winsLabel.text = "Score: \(scoreTracker.counter)"
        default:
            textWinOrLoss.text = ""
        }

    }
    
    @IBOutlet weak var changingView: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.view.setNeedsUpdateConstraints()
        addSubViews()
        addConstraintsToSubviews()
        colorGenerator()
       

    }
    override func updateViewConstraints() {
        super.updateViewConstraints()
    }
    func addSubViews() {
        self.view.addSubview(buttonBlue)
        self.view.addSubview(buttonRed)
        self.view.addSubview(buttonGreen)
        self.view.addSubview(viewOfGame)
        self.view.addSubview(winsLabel)
    }

    private func addConstraintsToSubviews() {
        buttonBlue.translatesAutoresizingMaskIntoConstraints = false
    buttonRed.translatesAutoresizingMaskIntoConstraints = false
    buttonGreen.translatesAutoresizingMaskIntoConstraints = false
    viewOfGame.translatesAutoresizingMaskIntoConstraints = false
    winsLabel.translatesAutoresizingMaskIntoConstraints = false
    textWinOrLoss.translatesAutoresizingMaskIntoConstraints = false
//    lossesNumber.translatesAutoresizingMaskIntoConstraints = false
        //redButton
        NSLayoutConstraint.activate([
            buttonRed.centerXAnchor.constraint(equalTo: self.view.centerXAnchor), buttonRed.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            ])
        //greenButton
        NSLayoutConstraint.activate([buttonGreen.trailingAnchor.constraint(equalTo: buttonRed.trailingAnchor, constant: -100) , buttonGreen.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
            ])
       //blueButton
        NSLayoutConstraint.activate([buttonBlue.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -50), buttonBlue.topAnchor.constraint(equalTo: buttonRed.topAnchor)])
//winsOrLosses
        NSLayoutConstraint.activate([textWinOrLoss.bottomAnchor.constraint(equalTo: self.view.topAnchor, constant: 10), textWinOrLoss.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
            ])
        

        
        
    }
    private func redButtonSetup() {
        NSLayoutConstraint.activate([
            buttonRed.centerXAnchor.constraint(equalTo: self.view.centerXAnchor), buttonRed.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            ])
    }
    private func greenButtonSetUp() {
        buttonGreen.leadingAnchor.constraint(equalTo: self.view.leftAnchor, constant: 20).isActive = true
        buttonGreen.topAnchor.constraint(equalTo: buttonRed.topAnchor, constant: 0).isActive = true
    }
    
    
    
    
}

