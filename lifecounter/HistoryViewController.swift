//
//  HistoryViewController.swift
//  lifecounter
//
//  Created by stlp on 4/26/22.
//

import UIKit

class HistoryViewController: UIViewController {

    @IBOutlet weak var historyStackView: UIStackView!
    var receivedPhrase = String()
    
    var gameHistory = [String]()
    var lifeTotals = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for view in historyStackView.subviews{
            view.removeFromSuperview()
        }
        
        for historyItem in gameHistory{
            let textLabel = UILabel()
            textLabel.backgroundColor = UIColor.yellow
            textLabel.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            textLabel.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            textLabel.text  = historyItem
            textLabel.textAlignment = .center
            historyStackView.addArrangedSubview(textLabel)
        }
        
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let newVC: ViewController = segue.destination as! ViewController
        newVC.previousHistory = gameHistory;
        newVC.lifeTotals = lifeTotals;
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
