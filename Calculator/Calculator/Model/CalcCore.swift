//
//  CalcCore.swift
//  Calculator
//
//  Created by Roy on 2022/03/23.
//

import Foundation

struct CalcOperation {
    var baseNumber: Double
    var operationNodes: [CalcOperationNode]
    init() {
        self.baseNumber = .zero
        self.operationNodes = [CalcOperationNode]()
    }
    
    init(baseNumber: Double , operationNodes: [CalcOperationNode]) {
        self.baseNumber = baseNumber
        self.operationNodes = operationNodes
    }
    
    mutating func mergePriorityNode()  {
        var mewNodes: [CalcOperationNode] = [ ]
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
                    mewNodes.append(CalcOperationNode(opearators: latestNode.operators, operand: newOPerand))
                }
            } else {
                mewNodes.append(node)
            }
        }
        self.operationNodes = mewNodes
    }
    
    func mergeOperationNodes() ->  Double {
        let value = operationNodes.reduce(baseNumber ,  {
            (result: Double , element: CalcOperationNode) in
            element.operators.doCalc(result, element.operand)
        })
        return value
    }
    
    mutating func calcResult() -> Double {
        mergePriorityNode()
        return mergeOperationNodes()
    }
    
    func operationString() -> String {
        return operationNodes.reduce(String(baseNumber), {
            (result: String, element: CalcOperationNode) in
            result + " " +  element.operators.symbol + " " + String(element.operand)
        })
    }
}
