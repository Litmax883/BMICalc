//
//  ViewController.swift
//  BMI Calculator
//
//  Created by MAC on 20.10.2020.
//  Copyright © 2020 Litmax. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
        
    @IBAction func heightSliderAction(_ sender: UISlider) {
        heightLabel.text = "\(String(format: "%.2f", sender.value)) m"
    }
    
    @IBAction func weightSliderAction(_ sender: UISlider) {
        weightLabel.text = "\(String(sender.value.rounded())) kg"
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        
        let height = heightSlider.value
        let weight = weightSlider.value
        calculatorBrain.calculateBMi(h: height, w: weight)
        
        self.performSegue(withIdentifier: "bmiSegue", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "bmiSegue" {
            let vcDestination = segue.destination as! SecondViewController
            vcDestination.bmi = calculatorBrain.bmi
        }
    }

    
    
    
}

