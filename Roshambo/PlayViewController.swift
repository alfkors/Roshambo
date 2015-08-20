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
    
    func randomRoshamboValue() -> Int{
        let randomValue = 1 + arc4random() % 3
        return Int(randomValue)
    }
    
    @IBAction func playRock(sender: UIButton) {
        var nextViewController: ResultViewController
        
        nextViewController = self.storyboard?.instantiateViewControllerWithIdentifier("ResultViewController") as! ResultViewController
        nextViewController.playerValue = 1
        nextViewController.opponentValue = randomRoshamboValue()
        
        self.presentViewController(nextViewController, animated: true, completion: nil)
    }
    
    @IBAction func playPaper(sender: AnyObject) {
        performSegueWithIdentifier("playPaper", sender: self)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let controller = segue.destinationViewController as! ResultViewController
        if(segue.identifier == "playPaper"){
            controller.playerValue = 2
        }
        if(segue.identifier == "playScissors"){
            controller.playerValue = 3
        }
        
        controller.opponentValue = randomRoshamboValue()
    }
}