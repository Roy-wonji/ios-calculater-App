//
//  Common.swift
//  Calculator
//
//  Created by Roy on 2022/03/23.
//

import Foundation

enum Common {
    static var currentNumber: Double  = .zero
    static  var  selectNumber: Double = 10
    static var currentOperator: CalcOperator?
    static var currentOperation:  CalcOperation = CalcOperation()
    static var currentPlusMinus: Int = -1
}
