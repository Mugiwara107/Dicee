//
//  ViewController.swift
//  Dicee
//
//  Created by soufiane elamiri on 3/13/19.
//  Copyright © 2019 soufiane elamiri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let name = "dice"
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    var randomDiceeIndex1 : Int = 0
    var randomDiceeIndex2 : Int = 0
    
    @IBOutlet weak var diceeBtn1: UIImageView!
    @IBOutlet weak var diceeBtn2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        updateDiceImages()
    }

    @IBAction func btnRoll(_ sender: UIButton) {
        
      updateDiceImages()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    func updateDiceImages(){
        randomDiceeIndex1 = Int.random(in: 0 ... 5)
        randomDiceeIndex2 = Int.random(in: 0 ... 5)
        
        print(randomDiceeIndex1)
        diceeBtn1.image = UIImage(named:  diceArray[randomDiceeIndex1])
        diceeBtn2.image = UIImage(named:  diceArray[randomDiceeIndex2])
        
        //        diceeBtn1.image = UIImage(named:  "\(name)\(randomDiceeIndex1)")
    }
    
}

