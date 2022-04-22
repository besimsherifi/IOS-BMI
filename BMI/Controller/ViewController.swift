//
//  ViewController.swift
//  BMI
//
//  Created by besim on 22.4.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var weight: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var bmi = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightChanged(_ sender: UISlider) {
        let heightLabel = String(format: "%.2f",(sender.value))
        height.text = "\(heightLabel) m"
    }
    
    @IBAction func weightChanged(_ sender: UISlider) {
        let weightLabel = String(format: "%.0f",(sender.value))
        weight.text = "\(weightLabel) KG"
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        bmi = Int(weight / (height * height))
        print(bmi)
    }
    
}

