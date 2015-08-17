//
//  ResultViewController.swift
//  Roshambo
//
//  Created by Mykola Aleshchanov on 8/16/15.
//  Copyright (c) 2015 Mykola Aleshchanov. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var firstPlayerValue: Int?
    var secondPlayerValue: Int?
    
    @IBOutlet var Result: UILabel!
    override func viewWillAppear(animated: Bool) {
        if let firstPlayerValue = self.firstPlayerValue{
            self.Result.text = "You Win!"
        } else {
            self.Result.textColor = UIColor.redColor()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismiss(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}
