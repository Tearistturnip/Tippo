//
//  SettingsViewController.swift
//  TipMaster
//
//  Created by Justin Lee on 12/27/17.
//  Copyright © 2017 Justin Lee. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var booleanTax: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let saved = UserDefaults.standard
        let which = saved.integer(forKey: "whichOne")
        booleanTax.selectedSegmentIndex = which
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func beforeAndAfter(_ sender: Any) {
        let optTax = [15, 18, 20]
        let result = optTax[booleanTax.selectedSegmentIndex]
        let savedBool = UserDefaults.standard
        if(result == 15){
            savedBool.set(0, forKey: "whichOne")
            print("yah")
        }
        else if(result == 18){
            savedBool.set(1, forKey: "whichOne")
            print("yah1")
        }
        else{
            savedBool.set(2, forKey: "whichOne")
            print("yah2")
        }
        //savedBool.set(true, forKey: "yes")
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
