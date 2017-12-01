//
//  ViewController.swift
//  Roll The Dice
//
//  Created by Shinto Joseph on 01/12/17.
//  Copyright © 2017 Shinto Joseph. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ramdomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0

    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
    }

   
    @IBAction func rollButtonTapped(_ sender: Any) {
        
        updateDiceImages()
        
    }
    
    func updateDiceImages(){
        
        ramdomDiceIndex1 = Int(1+(arc4random_uniform(6)))
        randomDiceIndex2 = Int(1+(arc4random_uniform(6)))
        
        diceImageView1.image = UIImage(named: "dice\(ramdomDiceIndex1)")
        diceImageView2.image = UIImage(named: "dice\(randomDiceIndex2)")
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }

}

