//
//  CalculatorController.swift
//  BMI Calculator
//
//  Created by Mihai Dumitru on 03/06/1401 AP.
//

import UIKit

class CalculatorController: UIViewController {

    @IBOutlet private weak var heightLabel: UILabel!
    @IBOutlet private weak var weightLabel: UILabel!
    @IBOutlet private weak var heightSlider: UISlider!
    @IBOutlet private weak var weightSlider: UISlider!

    private var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        let height = String(format: "%.2f", heightSlider.value)
        heightLabel.text = "\(height)m"
        
        let weight = String(format: "%.0f", weightSlider.value)
        weightLabel.text = "\(weight)Kg"
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        performSegue(withIdentifier: "segueToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToResult" {
            let destinationVC = segue.destination as! ResultController
            destinationVC.configure(withBmi: calculatorBrain.bmi!)
        }
    }
}
