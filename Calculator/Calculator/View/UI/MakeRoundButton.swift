//
//  MakeRoundButton.swift
//  Calculator
//
//  Created by 서원지 on 2022/03/17.
//

import UIKit

class MakeRoundButton: UIButton {
    @IBInspectable  var isRoundButton: Bool = false {
        didSet {
            self.layer.cornerRadius = self.frame.height / 2
        }
    }
}
