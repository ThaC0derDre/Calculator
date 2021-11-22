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
    private var inputHolder: (n1:Double, operation:String)?
    mutating func changeNumb(_ number: Double){
        self.number = number
    }
    mutating func workOut(symbol: String) -> Double?{
        if var n = number{
        switch symbol {
        case "AC":
            n = 0
        case "+/-":
            n *= -1
        case "%":
            n *= 0.01
        case "=":
            return computeTwoNumbers(n2: n)
        default:
            inputHolder = (n1:n, operation:symbol)
        }
        return n
    }
        return nil
    }
   private func computeTwoNumbers (n2:Double) -> Double? {
        if let n = inputHolder?.n1,
           let op = inputHolder?.operation {
            switch op{
            case "÷":
                return n / n2
            case "×":
                return n * n2
            case "+":
                return n + n2
            case "-":
                return n - n2
            default:
                fatalError("Could not compute two numbs")
            }
        }
       return nil
    }
}
