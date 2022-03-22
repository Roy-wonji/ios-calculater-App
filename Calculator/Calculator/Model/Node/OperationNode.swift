//
//  OperationNode.swift
//  Calculator
//
//  Created by Roy on 2022/03/22.
//

import Foundation

struct OperationNode {
    var operators: Operator
    var operand: Double
    
    init(opearators: Operator, operand: Double) {
        self.operators = opearators
        self.operand = operand
    }
}
