//
//  InitialValue.swift
//  Calculator
//
//  Created by 서원지 on 2022/03/17.
//

import Foundation

enum InitialValue {
    static var displayNumberLabel = ""
    static var firstCalculation = ""
    static var newCalculation = ""
    static var result = ""
    static var currentOperation: Operation =  CalcultorError.buttonEroor as! Operation
}
