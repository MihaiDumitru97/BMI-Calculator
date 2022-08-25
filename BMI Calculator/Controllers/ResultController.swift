//
//  ResultController.swift
//  BMI Calculator
//
//  Created by Mihai Dumitru on 03/06/1401 AP.
//

import UIKit

class ResultController: UIViewController {
    
    @IBOutlet private weak var bmiValueLabel: UILabel!
    @IBOutlet private weak var resultLabel: UILabel!
    
    private var bmi: BMI!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func configure(withBmi bmi: BMI) {
        self.bmi = bmi
    }
    
    private func setupUI() {
        bmiValueLabel.text = String(format: "%.1f", bmi.value)
        resultLabel.text = bmi.result.rawValue
        
        switch bmi.result {
        case .Obesity:
            view.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        case .Overweight:
            view.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        case .Normal:
            view.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        case .Underweight:
            view.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        }
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
