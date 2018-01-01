//
//  ViewController.swift
//  TipMaster
//
//  Created by Justin Lee on 12/18/17.
//  Copyright © 2017 Justin Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        billField.becomeFirstResponder()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //print("view will appear")
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
         let wantTax = UserDefaults.standard.integer(forKey: "whichOne")
         let tipPercentages = [0.15, 0.18, 0.2]
         var iteration = 0
         for _ in tipPercentages{
            if(iteration == wantTax){
                tipControl.selectedSegmentIndex = iteration
                break
            }
            iteration += 1
         }
    }
    /*
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did disappear")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
 */

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calcTip(_ sender: Any) {
        //let wantTax = UserDefaults.standard.integer(forKey: "whichOne")
        let tipPercentages = [0.15, 0.18, 0.2]
        //if(wantTax == 0){
            let bill = Double(billField.text!) ?? 0
            let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
            let total = bill + tip
            tipLabel.text = String(format: "$%.2f", tip)
            totalLabel.text = String(format: "$%.2f", total)
        //}
            /*
        else{
            //var savedIndex = 0
            var iteration = 0
            for _ in tipPercentages{
                if(tipPercentages[iteration] == Double(wantTax)){
                    tipControl.selectedSegmentIndex = iteration
                }
                iteration += 1
            }
        }
 */
    
    }
}

