//
//  CalcCore.swift
//  Calculator
//
//  Created by Roy on 2022/03/22.
//

import Foundation

struct Operation {
    var baseNumber: Double
    var operationNodes: [OperationNode]
    
    init(baseNumber: Double , operationNodes: [OperationNode]) {
        self.baseNumber = baseNumber
        self.operationNodes = operationNodes
    }
    
 func mergeOperationNodes() {
        let value = operationNodes.reduce(baseNumber ,  {
            (result: Double , element: OperationNode) in
            element.operators.doCalc(result, element.operand)
        })
        print(value)
    }
}
