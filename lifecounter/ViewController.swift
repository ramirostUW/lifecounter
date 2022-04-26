//
//  ViewController.swift
//  lifecounter
//
//  Created by stlp on 4/21/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var p1StackView: UIStackView!
    @IBOutlet weak var p2StackView: UIStackView!
    
    @IBOutlet weak var p3StackView: UIStackView!
    @IBOutlet weak var p4StackView: UIStackView!
    
    @IBOutlet weak var p5StackView: UIStackView!
    @IBOutlet weak var p6StackView: UIStackView!
    
    @IBOutlet weak var p7StackView: UIStackView!
    @IBOutlet weak var p8StackView: UIStackView!
    
    
    @IBOutlet weak var p1LifeInput: UITextField!
    @IBOutlet weak var p1LifeLabel: UILabel!
    @IBOutlet weak var p1plus: UIButton!
    @IBOutlet weak var p1minus: UIButton!
    
    @IBOutlet weak var p2LifeInput: UITextField!
    @IBOutlet weak var p2LifeLabel: UILabel!
    @IBOutlet weak var p2plus: UIButton!
    @IBOutlet weak var p2minus: UIButton!
    
    @IBOutlet weak var p3LifeInput: UITextField!
    @IBOutlet weak var p3LifeLabel: UILabel!
    @IBOutlet weak var p3plus: UIButton!
    @IBOutlet weak var p3minus: UIButton!
    
    @IBOutlet weak var p4LifeInput: UITextField!
    @IBOutlet weak var p4LifeLabel: UILabel!
    @IBOutlet weak var p4plus: UIButton!
    @IBOutlet weak var p4minus: UIButton!
    
    @IBOutlet weak var p5LifeInput: UITextField!
    @IBOutlet weak var p5LifeLabel: UILabel!
    @IBOutlet weak var p5plus: UIButton!
    @IBOutlet weak var p5minus: UIButton!
    
    @IBOutlet weak var p6LifeInput: UITextField!
    @IBOutlet weak var p6LifeLabel: UILabel!
    @IBOutlet weak var p6plus: UIButton!
    @IBOutlet weak var p6minus: UIButton!
    
    @IBOutlet weak var p7LifeInput: UITextField!
    @IBOutlet weak var p7LifeLabel: UILabel!
    @IBOutlet weak var p7plus: UIButton!
    @IBOutlet weak var p7minus: UIButton!
    
    @IBOutlet weak var p8LifeInput: UITextField!
    @IBOutlet weak var p8LifeLabel: UILabel!
    @IBOutlet weak var p8plus: UIButton!
    @IBOutlet weak var p8minus: UIButton!
    
    
    @IBOutlet weak var loserLabel: UILabel!
   
    var currentp1Life = 20
    var currentp2Life = 20
    var currentp3Life = 20
    var currentp4Life = 20
    
    var currentp5Life = 20
    var currentp6Life = 20
    var currentp7Life = 20
    var currentp8Life = 20

    
    var currPlayerCount = 4;
    override func viewDidLoad() {
        super.viewDidLoad()
        p5StackView.isHidden = true
        p6StackView.isHidden = true
        p7StackView.isHidden = true
        p8StackView.isHidden = true
        
        p1LifeInput.keyboardType = UIKeyboardType.numberPad
        p2LifeInput.keyboardType = UIKeyboardType.numberPad
        p3LifeInput.keyboardType = UIKeyboardType.numberPad
        p4LifeInput.keyboardType = UIKeyboardType.numberPad
        p5LifeInput.keyboardType = UIKeyboardType.numberPad
        p6LifeInput.keyboardType = UIKeyboardType.numberPad
        p7LifeInput.keyboardType = UIKeyboardType.numberPad
        p8LifeInput.keyboardType = UIKeyboardType.numberPad

        
        p1LifeLabel.text = String(currentp1Life)
        p2LifeLabel.text = String(currentp2Life)
        p3LifeLabel.text = String(currentp3Life)
        p4LifeLabel.text = String(currentp4Life)
        
        
        p5LifeLabel.text = String(currentp5Life)
        p6LifeLabel.text = String(currentp6Life)
        p7LifeLabel.text = String(currentp7Life)
        p8LifeLabel.text = String(currentp8Life)
        // Do any additional setup after loading the view.
    }
    
    func updateCountsOnScreen(_ playerNum: Int, _ interval: Int){
        if(playerNum == 1){
            currentp1Life += interval
            if(currentp1Life <= 0){
                    currentp1Life = 0;
                    loserLabel.text = "Player 1 Loses!"
                    p1LifeLabel.text = String(currentp1Life)
                }
                else {
                    p1LifeLabel.text = String(currentp1Life)
                }
        }
        if(playerNum == 2){
            currentp2Life += interval
            if(currentp2Life <= 0){
                    currentp2Life = 0;
                    loserLabel.text = "Player 2 Loses!"
                    p2LifeLabel.text = String(currentp2Life)
                }
                else {
                    p2LifeLabel.text = String(currentp2Life)
                }
        }
        
        if(playerNum == 3){
            currentp3Life += interval
            if(currentp3Life <= 0){
                    currentp3Life = 0;
                    loserLabel.text = "Player 3 Loses!"
                    p3LifeLabel.text = String(currentp3Life)
                }
                else {
                    p3LifeLabel.text = String(currentp3Life)
                }
        }
        
        if(playerNum == 4){
            currentp4Life += interval
            if(currentp4Life <= 0){
                    currentp4Life = 0;
                    loserLabel.text = "Player 4 Loses!"
                    p4LifeLabel.text = String(currentp4Life)
                }
                else {
                    p4LifeLabel.text = String(currentp4Life)
                }
        }
        
        if(playerNum == 5){
            currentp5Life += interval
            if(currentp5Life <= 0){
                    currentp5Life = 0;
                    loserLabel.text = "Player 5 Loses!"
                    p5LifeLabel.text = String(currentp5Life)
                }
                else {
                    p5LifeLabel.text = String(currentp5Life)
                }
        }
        
        if(playerNum == 6){
            currentp6Life += interval
            if(currentp6Life <= 0){
                    currentp6Life = 0;
                    loserLabel.text = "Player 6 Loses!"
                    p6LifeLabel.text = String(currentp6Life)
                }
                else {
                    p6LifeLabel.text = String(currentp6Life)
                }
        }
        
        if(playerNum == 7){
            currentp7Life += interval
            if(currentp7Life <= 0){
                    currentp7Life = 0;
                    loserLabel.text = "Player 7 Loses!"
                    p7LifeLabel.text = String(currentp7Life)
                }
                else {
                    p7LifeLabel.text = String(currentp7Life)
                }
        }
        
        if(playerNum == 8){
            currentp8Life += interval
            if(currentp8Life <= 0){
                    currentp8Life = 0;
                    loserLabel.text = "Player 8 Loses!"
                    p8LifeLabel.text = String(currentp8Life)
                }
                else {
                    p8LifeLabel.text = String(currentp8Life)
                }
        }
    }

    @IBAction func addPlayers(_ sender: Any){
        currPlayerCount = currPlayerCount + 1;
        
        if(currPlayerCount == 5)
        {
            p5StackView.isHidden = false
        }
        if(currPlayerCount == 6){
            p6StackView.isHidden = false
        }
        if(currPlayerCount == 7){
            p7StackView.isHidden = false
        }
        if(currPlayerCount == 8){
            p8StackView.isHidden = false
        }
        
    }
    @IBAction func p1AddLife(_ sender: Any){
        let lifeAmnt = p1LifeInput.text!
        if lifeAmnt != ""
        {
            let lifeAmntInt = Int(lifeAmnt)!
            updateCountsOnScreen(1, lifeAmntInt)
        }

    }
    
    @IBAction func p1SubtractLife(_ sender: Any){
        let lifeAmnt = p1LifeInput.text!
        if lifeAmnt != ""
        {
            let lifeAmntInt = Int(lifeAmnt)!
            updateCountsOnScreen(1, -lifeAmntInt)
        }

    }
    
    @IBAction func p2AddLife(_ sender: Any){
        let lifeAmnt = p2LifeInput.text!
        if lifeAmnt != ""
        {
            let lifeAmntInt = Int(lifeAmnt)!
            updateCountsOnScreen(2, lifeAmntInt)
        }

    }
    
    @IBAction func p2SubtractLife(_ sender: Any){
        let lifeAmnt = p2LifeInput.text!
        if lifeAmnt != ""
        {
            let lifeAmntInt = Int(lifeAmnt)!
            updateCountsOnScreen(2, -lifeAmntInt)
        }

    }
    
    @IBAction func p3AddLife(_ sender: Any){
        let lifeAmnt = p3LifeInput.text!
        if lifeAmnt != ""
        {
            let lifeAmntInt = Int(lifeAmnt)!
            updateCountsOnScreen(3, lifeAmntInt)
        }

    }
    
    @IBAction func p3SubtractLife(_ sender: Any){
        let lifeAmnt = p3LifeInput.text!
        if lifeAmnt != ""
        {
            let lifeAmntInt = Int(lifeAmnt)!
            updateCountsOnScreen(3, -lifeAmntInt)
        }

    }
    

    @IBAction func p4AddLife(_ sender: Any){
        let lifeAmnt = p4LifeInput.text!
        if lifeAmnt != ""
        {
            let lifeAmntInt = Int(lifeAmnt)!
            updateCountsOnScreen(4, lifeAmntInt)
        }

    }
    
    @IBAction func p4SubtractLife(_ sender: Any){
        let lifeAmnt = p4LifeInput.text!
        if lifeAmnt != ""
        {
            let lifeAmntInt = Int(lifeAmnt)!
            updateCountsOnScreen(4, -lifeAmntInt)
        }

    }
    
    @IBAction func p5AddLife(_ sender: Any){
        let lifeAmnt = p5LifeInput.text!
        if lifeAmnt != ""
        {
            let lifeAmntInt = Int(lifeAmnt)!
            updateCountsOnScreen(5, lifeAmntInt)
        }

    }
    
    @IBAction func p5SubtractLife(_ sender: Any){
        let lifeAmnt = p5LifeInput.text!
        if lifeAmnt != ""
        {
            let lifeAmntInt = Int(lifeAmnt)!
            updateCountsOnScreen(5, -lifeAmntInt)
        }

    }
    
    @IBAction func p6AddLife(_ sender: Any){
        let lifeAmnt = p6LifeInput.text!
        if lifeAmnt != ""
        {
            let lifeAmntInt = Int(lifeAmnt)!
            updateCountsOnScreen(6, lifeAmntInt)
        }

    }
    
    @IBAction func p6SubtractLife(_ sender: Any){
        let lifeAmnt = p6LifeInput.text!
        if lifeAmnt != ""
        {
            let lifeAmntInt = Int(lifeAmnt)!
            updateCountsOnScreen(6, -lifeAmntInt)
        }

    }
    
    @IBAction func p7AddLife(_ sender: Any){
        let lifeAmnt = p7LifeInput.text!
        if lifeAmnt != ""
        {
            let lifeAmntInt = Int(lifeAmnt)!
            updateCountsOnScreen(7, lifeAmntInt)
        }

    }
    
    @IBAction func p7SubtractLife(_ sender: Any){
        let lifeAmnt = p7LifeInput.text!
        if lifeAmnt != ""
        {
            let lifeAmntInt = Int(lifeAmnt)!
            updateCountsOnScreen(7, -lifeAmntInt)
        }

    }
    
    @IBAction func p8AddLife(_ sender: Any){
        let lifeAmnt = p8LifeInput.text!
        if lifeAmnt != ""
        {
            let lifeAmntInt = Int(lifeAmnt)!
            updateCountsOnScreen(8, lifeAmntInt)
        }

    }
    
    @IBAction func p8SubtractLife(_ sender: Any){
        let lifeAmnt = p8LifeInput.text!
        if lifeAmnt != ""
        {
            let lifeAmntInt = Int(lifeAmnt)!
            updateCountsOnScreen(8, -lifeAmntInt)
        }

    }
}

