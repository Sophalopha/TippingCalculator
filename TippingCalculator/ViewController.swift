//
//  ViewController.swift
//  TippingCalculator
//
//  Created by sophie ong on 12/29/20.
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

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //get bill
        let bill = Double(billField.text!) ?? 0
        let tipPercentanges = [0.15, 0.18, 0.2]
        //update
        let tip = bill * tipPercentanges[tipControl.selectedSegmentIndex]
        let total = bill + tip
        //return
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

