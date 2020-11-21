//
//  ViewController.swift
//  tip
//
//  Created by Huong Pham on 11/21/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //outlets which refer to the elements of the screen 
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func onTap(_ sender: Any) {
        print("u tapped on the screen ") //click on anywhere on the screen and print out hello on console
        view.endEditing(true) 
        
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //get the bill amount
        let bill = Double(billField.text!) ?? 0
        
        // for the left part of the ??, if anything is not valid => change to 0.
        
        let tipPercentages = [0.15,0.18,0.2]
        
        //calculate the total tip and total
        let tip = bill*tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill+tip
        
        
        //update the tip and total labels
        tipLabel.text = String(format:"%.2f", tip)
        totalLabel.text = String(format:"%.2f", total)
        
    }
    
}

