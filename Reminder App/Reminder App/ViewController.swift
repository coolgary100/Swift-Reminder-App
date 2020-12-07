//
//  ViewController.swift
//  Reminder App
//
//  Created by Gary Jiang on 2020-11-30.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func changeBackground(_ sender: Any) {
        view.backgroundColor = UIColor.darkGray
        
        let everything = view.subviews
        
        for eachView in everything {
            // is it a label?
            if eachView is UILabel {
                // downcast as UILabel
                let currentLabel = eachView as! UILabel
                currentLabel.textColor = UIColor.lightGray
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

