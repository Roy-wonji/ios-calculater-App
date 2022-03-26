//
//  CalcultorViewController.swift
//  Calculator
//
//  Created by Roy on 2022/03/23.
//

import UIKit

class CalcultorViewController: UIViewController {
    @IBOutlet weak  private var clearButton: MakeRoundButton!
    @IBOutlet weak private var operationLabel: UILabel!
    @IBOutlet weak  private var currentNumberLabel: UILabel!
    
    private var currentNumber: Double  = .zero {didSet {updateUI() }}
    private var currentOperator: CalcOperator? {didSet {updateUI() }}
    private var currentOperation:  CalcOperation = CalcOperation() {didSet {updateUI() }}
    private var currentStringNumber: String = ""
    private var isCalculateValue: Bool = false
    
    fileprivate func updateUI() {
        currentNumberLabel.text = String(currentNumber)
        operationLabel.text = currentOperation.operationString()
        if let calcOperation =  currentOperator {
            operationLabel.text = operationLabel.text! + " " +  calcOperation.symbol
        }
        
        if currentNumber != .zero {
            clearButton.setTitle(CalculatarCommon.clearButtonChangeToC, for: .normal)
        } else {
            clearButton.setTitle(CalculatarCommon.clearButtonChangeToAC, for: .normal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction private func numberPadTapped(_ sender: UIButton) {
        let buttonNumber  = sender.tag
        currentNumber = currentNumber * CalculatarCommon.selectNumber  +  Double(buttonNumber)
    }
    
    @IBAction private func clearButtonTapped(_ sender: UIButton) {
        if currentNumber != .zero {
            currentNumber = .zero
        } else {
            currentOperation =  CalcOperation()
        }
    }
    
    @IBAction private func plusMinusButtonTapped(_ sender: UIButton) {
        currentNumber  = currentNumber * Double(CalculatarCommon.currentPlusMinus)
    }
    
    @IBAction private func percentButtonTapped(_ sender: UIButton) {
        if currentNumber != .zero {
            currentNumber = currentNumber / CalculatarCommon.percentageNumber
        }
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
        currentOperator = currentOpeation
    }
    
    private func addOperatinNode() {
        guard currentNumber != .zero else {
            return
        }
        
        if  let  currentOperatoions  = currentOperator {
            currentOperation.operationNodes.append(CalcOperationNode(opearators: currentOperatoions,  operand: currentNumber))
        } else  {
            currentOperation.baseNumber = currentNumber
        }
        currentOperator = nil
        currentNumber = .zero
    }
    
    @IBAction private func showReultButtonTapped(_ sender: UIButton) {
        addOperatinNode()
        let wrongnumber = "0"
        currentNumberLabel.text = String(currentOperation.calcResult())
        operationLabel.text = (operationLabel.text ?? wrongnumber) + " = "
    }
    
    @IBAction private func pointButtonTapped(_ sender: UIButton) {
        if currentNumberLabel.text == "NaN" {
            return
        }
        if currentStringNumber.contains(".") {
            return
        }
        if isCalculateValue {
            return
        }
        if String(currentStringNumber).count >= 20 {
            return
        }
        if currentStringNumber.isEmpty {
            currentStringNumber = "0"
        }
        
        currentStringNumber += "."
        currentNumberLabel.text = currentStringNumber
    }
    
@objc
    @IBAction func deleteNumber(_ sender: Any) {
        guard currentNumber != .zero else  {
            return
        }
        let lastNumber = currentNumber.truncatingRemainder(dividingBy: CalculatarCommon.setDelteNumber)
        let shareNumber = currentNumber.formTruncatingRemainder(dividingBy: CalculatarCommon.setDelteNumber)
        currentNumber = (currentNumber - lastNumber) / CalculatarCommon.setDelteNumber
    }
}

