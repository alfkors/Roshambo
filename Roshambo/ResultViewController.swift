//
//  ResultViewController.swift
//  Roshambo
//
//  Created by Mykola Aleshchanov on 8/16/15.
//  Copyright (c) 2015 Mykola Aleshchanov. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var playerValue: Int?
    var opponentValue: Int?
    
    @IBOutlet var result: UIImageView!
    @IBOutlet var resultCaption: UILabel!
    override func viewWillAppear(animated: Bool) {
        let matchResult = (Int(self.playerValue!),Int(self.opponentValue!))
        
        switch matchResult {
        case (1,3):
            self.result.image = UIImage(named: "RockScissors")
            self.resultCaption.text = "Rock crushes Scissors, You Win!"
        case (1,2):
            self.result.image = UIImage(named: "PaperRock")
            self.resultCaption.text = "Paper covers Rock. You Lose!"
        case (2,1):
            self.result.image = UIImage(named: "PaperRock")
            self.resultCaption.text = "Paper covers Rock. You Win!"
        case (2,3):
            self.result.image = UIImage(named: "ScissorsPaper")
            self.resultCaption.text = "Scissors cut Paper. You Lose!"
        case (3,2):
            self.result.image = UIImage(named: "ScissorsPaper")
            self.resultCaption.text = "Scissors cut Paper. You Win!"
        case (3,1):
            self.result.image = UIImage(named: "RockScissors")
            self.resultCaption.text = "Rock crushes Scissors. You Lose!"
        case (1,1), (2,2), (3,3):
            self.result.image = UIImage(named: "Tie")
            self.resultCaption.text = "It's a tie!"
        default:
            self.resultCaption.textColor = UIColor.redColor()
            self.resultCaption.text = "Pleae contact your system administrator."
        }
    }
    
    
    
    @IBAction func dismiss(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}
