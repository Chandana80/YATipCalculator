//
//  ViewController.swift
//  YATipCalculator
//
//  Created by Davuluri, Chandana on 3/6/17.
//  Copyright © 2017 Davuluri, Chandana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmount: UITextField!
    

    @IBOutlet weak var tipPercentage: UISegmentedControl!
    
    @IBOutlet weak var totalBillAmt: UILabel!
    
    @IBOutlet weak var tipAmount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let defaults = UserDefaults.standard;
       
        tipPercentage.selectedSegmentIndex = defaults.integer(forKey: "tip");
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tipPercentage.selectedSegmentIndex = UserDefaults.standard.integer(forKey: "tip");
        calculateTipAmount(tipPercentage)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func valueChanged(_ sender: Any) {
        calculateTipAmount(tipPercentage)
    }
    
    @IBAction func calculateTipAmount(_ sender: UISegmentedControl) {
        if billAmount.text == "" {
            billAmount.text = "0"
        }
        let value = Double(billAmount.text!)
        let percentages = [0.1,0.15,0.18];
        
        let tip = percentages[sender.selectedSegmentIndex] * value!;
        let totalAmount = value! + tip;
        
        totalBillAmt.text=String("$\(totalAmount)");
        tipAmount.text=String("$\(tip)");
    }
}

