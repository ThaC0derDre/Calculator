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
    
    var didFinishTyping = true
    
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        //What should happen when a non-number button is pressed
    
        didFinishTyping = true
        
        guard let dubNumb = Double(displayLabel.text!) else {
            fatalError("Error converting text to Double!")
        }
        if let Button = sender.currentTitle{
            switch Button{
            case "AC":
                displayLabel.text = "0"
            case "+/-":
                displayLabel.text = String(dubNumb * -1)
            case "%":
                displayLabel.text = String(dubNumb * 0.01)
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
                didFinishTyping = false
            }else{
                displayLabel.text! += numbValue
            }
        }
        
        
        
        
    }

}

