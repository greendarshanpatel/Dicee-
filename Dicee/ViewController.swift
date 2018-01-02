//
//  ViewController.swift
//  Dicee
//
//  Created by Darshan Patel on 06/11/17.
//  Copyright © 2017 Darshan Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceImage1 : Int = 0
    var randomDiceImage2 : Int = 0
    
   let diceImage = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    @IBOutlet weak var diceImageOne: UIImageView!
    @IBOutlet weak var diceImageTwo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    getRandomValue()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButton(_ sender: UIButton) {
        
        getRandomValue()
    }
    
    func getRandomValue(){
        randomDiceImage1 = Int(arc4random_uniform(6))
        randomDiceImage2 = Int(arc4random_uniform(6))
        
        diceImageOne.image = UIImage(named:diceImage[randomDiceImage1])
        diceImageTwo.image = UIImage(named:diceImage[randomDiceImage2])
        
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        getRandomValue()
    }
}

