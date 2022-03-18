//
//  MakeDot.swift
//  Calculator
//
//  Created by 서원지 on 2022/03/18.
//

import Foundation

func makeDotValue() {
    if InitialValue.displayNumberLabel.count < 8,  !InitialValue.displayNumberLabel.contains(".") {
        InitialValue.displayNumberLabel += InitialValue.displayNumberLabel.isEmpty ? "0." : "."
    }
}
