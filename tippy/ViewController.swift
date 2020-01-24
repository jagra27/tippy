//
//  ViewController.swift
//  tippy
//
//  Created by Jada Grant on 1/24/20.
//  Copyright © 2020 Jada Grant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        
        let tipPrecentages = [0.15, 0.18, 0.2]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPrecentages[tipControl.selectedSegmentIndex]
        let total = tip + bill
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        view.endEditing(true)
    }
}

