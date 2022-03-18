//
//  MakeRoundButton.swift
//  Calculator
//
//  Created by 서원지 on 2022/03/18.
//

import UIKit

//@IBDesignable
class MakeRoundButton: UIButton {
   @IBInspectable var isRound: Bool = false {
        didSet {
            if isRound {
                self.layer.cornerRadius = self.frame.height / 2
            }
        }
    }
}
