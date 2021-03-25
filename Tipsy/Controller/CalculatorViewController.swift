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
    var totalPerPerson = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tipChoose(_ sender: UIButton) {
        firstTip.isSelected = false
        secondTip.isSelected = false
        thirdTip.isSelected = false
        sender.isSelected = true
        billLabel.endEditing(true)
        
        let buttonSelected = sender.currentTitle!
        let buttonSelectedMinusPercentage = buttonSelected.dropLast()
        
        tip = Double(buttonSelectedMinusPercentage)! / 100

        }
    @IBAction func stepperChanged(_ sender: UIStepper) {
        stepperCountLabel.text = String(Int(sender.value))
    }
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let checkTotal = Double(billLabel.text!)!
        let totalTipAmount = checkTotal * tip
        let total = checkTotal + totalTipAmount
        totalPerPerson = total / Double(stepperCountLabel.text!)!
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is ResultViewController {
            let vc = segue.destination as? ResultViewController
            vc?.resultLabelText = String(format: "%.2f", totalPerPerson)
            vc?.moneyFromPersonLabelText = "Split between \(stepperCountLabel.text!) people with \(Int(tip * 100))% tip"
        }
    }
    
}

