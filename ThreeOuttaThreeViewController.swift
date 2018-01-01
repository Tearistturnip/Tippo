//
//  ThreeOuttaThreeViewController.swift
//  TipMaster
//
//  Created by Justin Lee on 12/31/17.
//  Copyright © 2017 Justin Lee. All rights reserved.
//

import UIKit

class ThreeOuttaThreeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func choseOneHelpful(_ sender: Any) {
        let defaults = UserDefaults.standard
        var updateOne = defaults.integer(forKey: "Score")
        updateOne = updateOne + 1
        defaults.set(updateOne, forKey: "Score")
    }
    
    @IBAction func choseTwoHelpful(_ sender: Any) {
        let defaults = UserDefaults.standard
        var updateOne = defaults.integer(forKey: "Score")
        updateOne = updateOne + 2
        defaults.set(updateOne, forKey: "Score")
    }
    
    @IBAction func choseThreeFriendly(_ sender: Any) {
        let defaults = UserDefaults.standard
        var updateOne = defaults.integer(forKey: "Score")
        updateOne = updateOne + 3
        defaults.set(updateOne, forKey: "Score")
    }
    
    @IBAction func choseFourHelpful(_ sender: Any) {
        let defaults = UserDefaults.standard
        var updateOne = defaults.integer(forKey: "Score")
        updateOne = updateOne + 4
        defaults.set(updateOne, forKey: "Score")
    }
    
    @IBAction func choseFiveHelpful(_ sender: Any) {
        let defaults = UserDefaults.standard
        var updateOne = defaults.integer(forKey: "Score")
        updateOne = updateOne + 5
        defaults.set(updateOne, forKey: "Score")
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
