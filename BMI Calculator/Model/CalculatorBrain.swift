//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by MAC on 20.10.2020.
//  Copyright © 2020 Litmax. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMi(h: Float, w: Float) {
        let bmiValue =  w / (h * h)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Kushai bolshe drish", clolor: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Krasauchik", clolor: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Zhri menshe zhirdyai", clolor: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
    }


}
