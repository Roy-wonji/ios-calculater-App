//
//  MakeRoundButton.swift
//  Calculator
//
//  Created by Roy on 2022/03/22.
//

import UIKit

@IBDesignable
final class MakeRoundButton: UIButton {
   @IBInspectable var isRound: Bool = false {
        didSet {
            if isRound {
                self.layer.cornerRadius = self.frame.height / 2
            }
        }
    }
}
