//
//  ViewController.swift
//  lifecounter
//
//  Created by stlp on 4/21/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loserLabel: UILabel!
    @IBOutlet weak var p1plus5: UIButton!
    @IBOutlet weak var p1plus1: UIButton!
    
    
    @IBOutlet weak var p1minus5: UIButton!
    @IBOutlet weak var p1minus1: UIButton!
    
    
    @IBOutlet weak var p2plus5: UIButton!
    @IBOutlet weak var p2plus1: UIButton!
    
    @IBOutlet weak var p2minus5: UIButton!
    @IBOutlet weak var p2minus1: UIButton!
    
    var currentp1Life = 20
    var currentp2Life = 20
    @IBOutlet weak var p2Life: UILabel!
    @IBOutlet weak var p1Life: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        p1Life.text = String(currentp1Life)
        p2Life.text = String(currentp2Life)
        // Do any additional setup after loading the view.
    }
    
    func updateCountsOnScreen(_ isPlayer1: Bool, _ interval: Int){
        if(isPlayer1){
            currentp1Life += interval
            if(currentp1Life <= 0){
                currentp1Life = 0;
                loserLabel.text = "Player 1 Loses!"
                p1Life.text = String(currentp1Life)
            }
            else {
                p1Life.text = String(currentp1Life)
            }
            
        }
        else {
            currentp2Life += interval
            if(currentp2Life <= 0){
                currentp2Life = 0;
                loserLabel.text = "Player 2 Loses!"
                p2Life.text = String(currentp2Life)
            }
            else {
                p2Life.text = String(currentp2Life)
            }
        }
    }

    @IBAction func p1plus1(_ sender: Any){
        updateCountsOnScreen(true, 1)
    }
    
    @IBAction func p1plus5(_ sender: Any){
        updateCountsOnScreen(true, 5)
    }
    
    @IBAction func p1minus1(_ sender: Any){
        updateCountsOnScreen(true, -1)
    }
    
    @IBAction func p1minus5(_ sender: Any){
        updateCountsOnScreen(true, -5)
    }
    
    @IBAction func p2plus1(_ sender: Any){
        updateCountsOnScreen(false, 1)
    }
    
    @IBAction func p2plus5(_ sender: Any){
        updateCountsOnScreen(false, 5)
    }
    
    @IBAction func p2minus1(_ sender: Any){
        updateCountsOnScreen(false, -1)
    }
    
    @IBAction func p2minus5(_ sender: Any){
        updateCountsOnScreen(false, -5)
    }
}

