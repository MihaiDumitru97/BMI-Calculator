
# BMI Calculator

BMI Calculator is a swift app that calculates your Body Mass Index.


## Features
---
- Light/dark mode toggle
- Sliders to input values faster
- Portrait/Landscape mode
---

## Usage/Examples

This function calculates the BMI value and gives you the corresponding result.

```swift
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
```


## Demo

![Gif Link](https://github.com/MihaiDumitru97/BMI-Calculator/blob/main/Simulator%20Screen%20Recording%20-%20iPhone%2011%20-%202022-08-25%20at%2016.57.34.gif)

