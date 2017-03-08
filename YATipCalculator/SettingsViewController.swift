//
//  SettingsViewController.swift
//  YATipCalculator
//
//  Created by Davuluri, Chandana on 3/6/17.
//  Copyright © 2017 Davuluri, Chandana. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultPercentage: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        defaultPercentage.selectedSegmentIndex = UserDefaults.standard.integer(forKey: "tip")
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func defaultChanged(_ sender: UISegmentedControl) {
        
        let defaults = UserDefaults.standard;
        defaults.set(sender.selectedSegmentIndex,forKey:"tip")
        defaults.synchronize()        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
