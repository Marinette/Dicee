//
//  ViewController.swift
//  Dicee
//
//  Created by Marinette Chen on 18-05-21.
//  Copyright © 2018 Marinette Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    //left dice
    @IBOutlet weak var diceImageViewLeft: UIImageView!
    
    //right dice
    @IBOutlet weak var diceImageViewRight: UIImageView!
    
    //button
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        randomizeDice()
        updateDiceImages()

    }
    func updateDiceImages() {
        diceImageViewLeft.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageViewRight.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    func randomizeDice() {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        randomizeDice()
        updateDiceImages()        
    }
}



