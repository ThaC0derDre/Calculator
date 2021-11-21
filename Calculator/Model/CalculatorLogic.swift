//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Andres Gutierrez on 11/21/21.
//  Copyright © 2021 London App Brewery. All rights reserved.
//

import Foundation

class Calculatorlogic {
    let number: Double
    
    init (number: Double){
        self.number = number
    }
    
    func workOut(symbol: String) -> Double{
        var theLabel:Double
        switch symbol {
        case "AC":
            theLabel = 0
        case "+/-":
            theLabel = number * -1
        case "%":
            theLabel  = number * 0.01
        default:
            fatalError("Unknown Button Pressed!")
        }
        return theLabel
    }
}
