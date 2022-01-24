//
//  ViewController.swift
//  prework
//
//  Created by Najlaa Bouras on 1/20/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var billamountTextfield: UITextField!
    
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    

    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func CalculateTip(_ sender: Any) {
        
        
        //get bill amount from text field
        let bill = Double(billamountTextfield.text!) ?? 0
        
        //get tip total by multiplying top * tip percentage
        
        let tippercentage = [0.15, 0.18,0.20]
        
        let tip = bill * tippercentage[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        totalLabel.text = String(format : "$%.2f", total)
        
    }
    
}

