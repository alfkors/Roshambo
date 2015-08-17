//
//  ViewController.swift
//  Roshambo
//
//  Created by Mykola Aleshchanov on 8/16/15.
//  Copyright (c) 2015 Mykola Aleshchanov. All rights reserved.
//

import UIKit

class PlayViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func playRock(sender: UIButton) {
        var nextViewController: ResultViewController
        
        nextViewController = self.storyboard?.instantiateViewControllerWithIdentifier("ResultViewController") as! ResultViewController
        nextViewController.firstPlayerValue = 1
        
        self.presentViewController(nextViewController, animated: true, completion: nil)
    }

}

