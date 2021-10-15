//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func shuffleDice (random: Int, view: UIImageView) {
        //creates an array of all dice images and then accessed a random index
        view.image = [
            UIImage(named: "DiceOne.png"),
            UIImage(named: "DiceTwo.png"),
            UIImage(named: "DiceThree.png"),
            UIImage(named: "DiceFour.png"),
            UIImage(named: "DiceFive.png"),
            UIImage(named: "DiceSix.png")
        ][random]
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let leftDiceNumber = Int.random(in: 0...5)
        let rightDiceNumber = Int.random(in: 0...5)

        shuffleDice(random: leftDiceNumber, view: diceImageViewOne)
        shuffleDice(random: rightDiceNumber, view: diceImageViewTwo)
        
        //example below of .randomElement()
//        let diceArray = [
//           UIImage(named: "DiceOne.png"),
//           UIImage(named: "DiceTwo.png"),
//           UIImage(named: "DiceThree.png"),
//           UIImage(named: "DiceFour.png"),
//           UIImage(named: "DiceFive.png"),
//           UIImage(named: "DiceSix.png")
//        ]
//        diceImageViewOne.image = diceArray.randomElement()
//        diceImageViewTwo.image = diceArray.randomElement()
    }
   
}

