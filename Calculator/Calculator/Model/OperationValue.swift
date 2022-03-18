//
//  OperationValue.swift
//  Calculator
//
//  Created by 서원지 on 2022/03/18.
//

import Foundation

func opearationValue() {
    guard let fristOperation = Double(InitialValue.firstCalculation) else  { return }
    guard let secondOpertaion = Double(InitialValue.newCalculation) else { return }
    
    switch InitialValue.currentOperation {
    case .add:
        InitialValue.result = "\(fristOperation + secondOpertaion)"
    case .subtract:
        InitialValue.result = "\(fristOperation - secondOpertaion)"
    case .divide:
        InitialValue.result = "\(fristOperation / secondOpertaion )"
    case .mutiply:
        InitialValue.result = "\(fristOperation * secondOpertaion)"
    case .additionSubtractionOperator:
        if InitialValue.result == "\(fristOperation)"  {
            InitialValue.result = "+\(fristOperation)"
        } else {
            InitialValue.firstCalculation = "\(fristOperation)"
        }
    case .percentage:
        InitialValue.result = String(fristOperation.truncatingRemainder(dividingBy: 100 / secondOpertaion))
    default:
        CalcultorError.operationError
    } 
    
} 
