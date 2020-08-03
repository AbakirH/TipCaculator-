//
//  ViewController.swift
//  tip
//
//  Created by Abakir Hanna on 8/2/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipNumber: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
  
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billField.text!) ?? 0
        
        tipNumber.text = String(format: "%i%%", Int(tipSlider.value))
        let tip = Int(bill * Double((tipSlider.value) / 100))
        let total = bill + Double(tip)

        tipLabel.text = String(format: "%$%.2f", Double(tip))
        totalLabel.text = String(format: "%$%.2f", total)
    }
}

