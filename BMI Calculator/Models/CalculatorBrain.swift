//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Mihai Dumitru on 03/06/1401 AP.
//

import Foundation

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
       let bmiValue = weight / (height * height)
       
       if bmiValue < 18.5 {
           bmi = .init(value: bmiValue, result: .Underweight)
       } else if bmiValue < 25 {
           bmi = .init(value: bmiValue, result: .Normal)
       } else if bmiValue < 30 {
           bmi = .init(value: bmiValue, result: .Overweight)
       } else {
           bmi = .init(value: bmiValue, result: .Obesity)
       }
   }
}
