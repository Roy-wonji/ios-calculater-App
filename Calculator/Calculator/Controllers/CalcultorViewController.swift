//
//  CalcultorViewController.swift
//  Calculator
//
//  Created by Roy on 2022/03/23.
//

import UIKit

final class CalcultorViewController: UIViewController {
    @IBOutlet weak  private var clearButton: MakeRoundButton!
    @IBOutlet weak private var operationLabel: UILabel!
    @IBOutlet weak  private var currentNumberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction private func numberPadTapped(_ sender: UIButton) {
        let buttonNumber  = sender.tag
        Common.currentNumber = Common.currentNumber * Common.selectNumber  + Double(buttonNumber)
        currentNumberLabel.text = String(Common.currentNumber)
    }
    
    @IBAction private func clearButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction private func plusMinusButtonTapped(_ sender: UIButton) {
        Common.currentNumber  = Common.currentNumber * Double(Common.currentPlusMinus)
        currentNumberLabel.text = String(Common.currentNumber)
    }
    
    @IBAction private func percentButtonTapped(_ sender: UIButton) {
        
    }
    //MARK: 한번더  수정
    @IBAction private func operatorButtonTapped(_ sender: UIButton) {
        addOperatinNode()
        
        var currentOpeation: CalcOperator = .plus
        switch sender.tag {
        case  1:
            currentOpeation = .divide
        case 2:
            currentOpeation = .multiply
        case 3:
            currentOpeation = .minus
        case 4:
            currentOpeation = .plus
        default:
            CalcultorError.operationError
        }
        Common.currentOperator = currentOpeation
        operationLabel.text = operationLabel.text! + currentOpeation.symbol
    }
    
    private func addOperatinNode() {
        if  let  currentOperatoions  = Common.currentOperator {
            Common.currentOperation.operationNodes.append(CalcOperationNode(opearators: currentOperatoions,  operand: Common.currentNumber))
        } else  {
            Common.currentOperation.baseNumber = Common.currentNumber
        }
        Common.currentNumber = .zero
        currentNumberLabel.text = String(Common.currentNumber)
        operationLabel.text = Common.currentOperation.operationString()
    }
    
    @IBAction private func showReultButtonTapped(_ sender: UIButton) {
        addOperatinNode()
        let wrongnumber = "0"
        operationLabel.text = (operationLabel.text ?? wrongnumber) + " = " 
        currentNumberLabel.text = String(Common.currentOperation.calcResult())
    }
    
    @IBAction private func pointButtonTapped(_ sender: UIButton) {
        
    }
}

