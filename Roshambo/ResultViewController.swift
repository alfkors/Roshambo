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
    
    @IBOutlet var Result: UILabel!
    override func viewWillAppear(animated: Bool) {
        let matchResult = (Int(self.playerValue!),Int(self.opponentValue!))
        
        switch matchResult {
        case (1,3), (2,1), (3,2):
            self.Result.textColor = UIColor.greenColor()
            self.Result.text = "You Win!"
        case (1,2), (2,3), (3,1):
            self.Result.textColor = UIColor.redColor()
            self.Result.text = "You Lose!"
        case (1,1), (2,2), (3,3):
            self.Result.textColor = UIColor.blueColor()
            self.Result.text = "It's a tie!"
        default:
            self.Result.textColor = UIColor.yellowColor()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    @IBAction func dismiss(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}
