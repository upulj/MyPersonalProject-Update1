//
//  ViewController.swift
//  MyPersonalProject
//
//  Created by Upul Jayalath on 26/03/2015.
//  Copyright (c) 2015 Mine Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var phoneCategory = ["":""]
    @IBOutlet weak var phoneCategoryName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        phoneCategoryName.text = phoneCategory["category"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

