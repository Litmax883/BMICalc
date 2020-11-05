//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by MAC on 20.10.2020.
//  Copyright © 2020 Litmax. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmi: BMI?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    
    @IBAction func recPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let bmi = bmi else { return }
        bmiLabel.text = String(format: "%.1f", bmi.value)
        
        self.view.backgroundColor = bmi.clolor
        self.commentLabel.text = bmi.advice
  
    }

}
