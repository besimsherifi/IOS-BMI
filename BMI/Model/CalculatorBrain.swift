//
//  CalculatorBrain.swift
//  BMI
//
//  Created by besim on 23.4.22.
//

import UIKit

struct CalculatorBrain{
    
    var bmi: BMI?
    
    func getBMI() -> String{
        let bmiVal = String(format: "%.1f", self.bmi?.value ?? 0.0)
        return bmiVal
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.cyan
    }
     
    
    mutating func calculateBMI(height: Float, weight: Float){
       let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more you skiny skeleton", color: UIColor.cyan)
        }else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: UIColor.green)
        }else{
            bmi = BMI(value: bmiValue, advice: "Eat less you healthy being", color: UIColor.systemPink)
        }
    }
    
  
    
    
}
