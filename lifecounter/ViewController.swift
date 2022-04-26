//
//  ViewController.swift
//  lifecounter
//
//  Created by stlp on 4/21/22.
//

import UIKit

class ViewController: UIViewController {

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
    
    
    @IBOutlet weak var loserLabel: UILabel!
   
    var currentp1Life = 20
    var currentp2Life = 20
    var currentp3Life = 20
    var currentp4Life = 20
    override func viewDidLoad() {
        super.viewDidLoad()
        p1LifeInput.keyboardType = UIKeyboardType.numberPad
        p2LifeInput.keyboardType = UIKeyboardType.numberPad
        p3LifeInput.keyboardType = UIKeyboardType.numberPad
        p4LifeInput.keyboardType = UIKeyboardType.numberPad

        
        p1LifeLabel.text = String(currentp1Life)
        p2LifeLabel.text = String(currentp2Life)
        p3LifeLabel.text = String(currentp3Life)
        p4LifeLabel.text = String(currentp4Life)
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
}

