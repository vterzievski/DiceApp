//
//  ViewController.swift
//  DiceApp
//
//  Created by Vladimir Terzievski on 5/11/18.



import UIKit

class ViewController: UIViewController {
    
    let diceArrays = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    //MARK: - Variables
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    //MARK - Outlets
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    //MARK: - System
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImages()
    }

    //MARK: - Actions
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    func updateDiceImages() {
        randomDiceIndex1 = Int.random(in: 0...5)
        randomDiceIndex2 = Int.random(in: 0...5)
        print(randomDiceIndex1)
        diceImageView1.image = UIImage(named:diceArrays[randomDiceIndex1])
        diceImageView2.image = UIImage(named:diceArrays[randomDiceIndex2])
    }
}

