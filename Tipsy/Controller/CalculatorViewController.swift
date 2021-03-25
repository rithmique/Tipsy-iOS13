//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billLabel: UITextField!
    
    @IBOutlet weak var firstTip: UIButton!
    @IBOutlet weak var secondTip: UIButton!
    @IBOutlet weak var thirdTip: UIButton!
    @IBOutlet weak var stepperCountLabel: UILabel!

    var tip = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tipChoose(_ sender: UIButton) {
        firstTip.isSelected = false
        secondTip.isSelected = false
        thirdTip.isSelected = false
        sender.isSelected = true
        
        let buttonSelected = sender.currentTitle!
        let buttonSelectedMinusPercentage = buttonSelected.dropLast()
        
        tip = Double(buttonSelectedMinusPercentage)! / 100

        }
    @IBAction func stepperChanged(_ sender: UIStepper) {
    }
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        print(tip)
    }
    
}

