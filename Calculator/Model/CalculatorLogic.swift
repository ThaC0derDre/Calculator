//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Andres Gutierrez on 11/21/21.
//  Copyright © 2021 London App Brewery. All rights reserved.
//

import Foundation

struct Calculatorlogic {
    private var number: Double?
    
    mutating func changeNumb(_ number: Double){
        self.number = number
    }
    func workOut(symbol: String) -> Double?{
        if var n = number{
        switch symbol {
        case "AC":
            n = 0
        case "+/-":
            n *= -1
        case "%":
            n *= 0.01
        default:
            fatalError("Unknown Button Pressed!")
        }
        return n
    }
        return nil
    }
}
