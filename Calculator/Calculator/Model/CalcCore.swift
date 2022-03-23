//
//  CalcCore.swift
//  Calculator
//
//  Created by Roy on 2022/03/23.
//

import Foundation

struct Operation {
    var baseNumber: Double
    var operationNodes: [OperationNode]
    
    init(baseNumber: Double , operationNodes: [OperationNode]) {
        self.baseNumber = baseNumber
        self.operationNodes = operationNodes
    }
    
    mutating func mergePriorityNode()  {
        var mewNodes: [OperationNode] = [ ]
        for node in self.operationNodes {
            if node.operators == .multiply || node.operators == .divide {
                let base: Double
                if mewNodes.isEmpty {
                    base = baseNumber
                    let newOperand = node.operators.doCalc(base , node.operand)
                    baseNumber = newOperand
                } else {
                    let latestNode = mewNodes.removeLast()
                    base = latestNode.operand
                    let newOPerand = node.operators.doCalc(base, node.operand)
                    mewNodes.append(OperationNode(opearators: latestNode.operators, operand: newOPerand))
                }
            } else {
                mewNodes.append(node)
            }
        }
        self.operationNodes = mewNodes
    }
    
    
    func mergeOperationNodes() {
        let value = operationNodes.reduce(baseNumber ,  {
            (result: Double , element: OperationNode) in
            element.operators.doCalc(result, element.operand)
        })
        print(value)
    }
}
