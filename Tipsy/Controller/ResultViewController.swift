//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Максим on 25.03.2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var moneyFromPersonLabel: UILabel!
    
    var resultLabelText: String!
    var moneyFromPersonLabelText: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = resultLabelText
        moneyFromPersonLabel.text = moneyFromPersonLabelText
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
