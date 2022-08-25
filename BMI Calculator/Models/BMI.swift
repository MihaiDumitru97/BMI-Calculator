//
//  BMI.swift
//  BMI Calculator
//
//  Created by Mihai Dumitru on 03/06/1401 AP.
//

import Foundation

struct BMI {
    var value: Float
    var result: BMIResult
}

enum BMIResult: String {
    case Obesity
    case Overweight
    case Normal
    case Underweight
}
