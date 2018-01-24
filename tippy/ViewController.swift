//
//  ViewController.swift
//  tippy
//
//  Created by Nancy Gomez on 1/22/18.
//  Copyright © 2018 Nancy Gomez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any) {
        
        let tips = [0.18, 0.2, 0.25]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tips[tipControl.selectedSegmentIndex]
        let total = bill + tip

        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
}

