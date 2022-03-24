//
//  OperationNode.swift
//  Calculator
//
//  Created by Roy on 2022/03/22.
//

import Foundation

struct CalcOperationNode {
    var operators: CalcOperator
    var operand: Double
    
    init(opearators: CalcOperator, operand: Double) {
        self.operators = opearators
        self.operand = operand
    }
}
