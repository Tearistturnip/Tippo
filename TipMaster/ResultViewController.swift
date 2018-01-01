//
//  ResultViewController.swift
//  TipMaster
//
//  Created by Justin Lee on 12/31/17.
//  Copyright © 2017 Justin Lee. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    
    @IBOutlet weak var resultBillLabel: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var resultTipLabel: UILabel!
    @IBOutlet weak var resultTotalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let defaults = UserDefaults.standard
        let score = defaults.integer(forKey: "Score")
        if(score > 13){
            tipPercentageLabel.text = String(format: "18%%")
        }
        else{
            tipPercentageLabel.text = String(format: "15%%")
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func resultBillChanged(_ sender: Any) {
        let bill = Double(resultBillLabel.text!) ?? 0
        let defaults = UserDefaults.standard
        let score = defaults.integer(forKey: "Score")
        if(score > 13){
            let tipEight = bill * 0.18
            resultTipLabel.text = String(format: "$%.2f", tipEight)
            let totalEight = bill + tipEight
            resultTotalLabel.text = String(format: "$%.2f", totalEight)

        }
        else{
            let tipEight = bill * 0.15
            resultTipLabel.text = String(format: "$%.2f", tipEight)
            let totalEight = bill + tipEight
            resultTotalLabel.text = String(format: "$%.2f", totalEight)
        }
        
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
