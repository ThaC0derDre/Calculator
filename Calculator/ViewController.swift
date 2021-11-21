//
//  ViewController.swift
//  Calculator
//
//  Created by Angela Yu on 10/09/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var displayLabel: UILabel!
    
    private var didFinishTyping = true
    private var displayValue: Double{
        get {
            guard let dubNumb = Double(displayLabel.text!) else {
                fatalError("Error converting text to Double!")
            }
            return dubNumb
        } set {
            displayLabel.text = String(newValue)
        }
    }
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        //What should happen when a non-number button is pressed
        
        didFinishTyping = true
        
        if let Button = sender.currentTitle{
            switch Button{
            case "AC":
                displayLabel.text = "0"
            case "+/-":
                displayValue *= -1
            case "%":
                displayValue *= 0.01
            default:
                fatalError("Unknown Button Pressed!")
            }
        }
        
    }
    
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        //What should happen when a number is entered into the keypad
        
        if let numbValue = sender.currentTitle{
            if didFinishTyping{
                displayLabel.text = numbValue
                if numbValue == "."{
                    displayLabel.text = "0."
                }
                didFinishTyping = false
            }else{
                if numbValue == "."{
                    if let anotherDecimal = displayLabel.text{
                        if anotherDecimal.contains("."){
                            return
                        }
                    }
                }
                displayLabel.text! += numbValue
            }
        }
    }
}


