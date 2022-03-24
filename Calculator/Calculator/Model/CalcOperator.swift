//
//  Operator.swift
//  Calculator
//
//  Created by Roy on 2022/03/22.
//

import Foundation

enum CalcOperator {
    case plus
    case minus
    case multiply
    case divide
    
    var doCalc:  (Double,  Double)  -> Double {
        switch self {
        case .plus:
            return (+)
        case .minus:
            return (-)
        case .multiply:
            return (*)
        case .divide:
            return(/)
        }
    }
    
    var symbol:  String {
        switch self {
        case .plus:
            return "+"
        case .minus:
            return  "-"
        case .multiply:
            return "*"
        case .divide:
            return ""
        }
    }
}
