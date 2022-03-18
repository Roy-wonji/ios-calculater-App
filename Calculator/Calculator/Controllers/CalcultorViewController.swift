//
//  CalcultorViewController.swift
//  Calculator
//
//  Created by 서원지 on 2022/03/18.
//

import UIKit

final class CalcultorViewController: UIViewController {
    static let shared: CalcultorViewController = CalcultorViewController()
    
    @IBOutlet weak var numberOutputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction private func NumberButtonTapped(_ sender: UIButton) {
        guard let numberValue = sender.title(for: .normal) else  {return}
        if  InitialValue.displayNumberLabel.count < 9 {
            InitialValue.displayNumberLabel += numberValue
            numberOutputLabel.text = InitialValue.displayNumberLabel
        }
    }
    
    @IBAction private func clearButtonTapped(_ sender: UIButton) {
        makeZeroValue()
        numberOutputLabel.text =  "0"
    }
    
    @IBAction private func additionSubtractionOperatorButtonTapped(_ sender: UIButton) {
        operation(.additionSubtractionOperator)
    }
    
    @IBAction private func percentageButtonTapped(_ sender: UIButton) {
        operation(.percentage)
    }
    
    @IBAction private func divideButtonTapped(_ sender: UIButton) {
        operation(.divide)
    }
    
    @IBAction private func mutiplyButtonTapped(_ sender: Any) {
        operation(.mutiply)
    }
    
    @IBAction private func subtractButtonTapped(_ sender: UIButton) {
        operation(.subtract)
    }
    
    @IBAction private func addButtonTapped(_ sender: UIButton) {
        operation(.add)
    }
    
    @IBAction private func equalButtonTapped(_ sender: UIButton) {
        operation(InitialValue.currentOperation)
    }
    
    @IBAction private func dotButtonTapped(_ sender: UIButton) {
        makeDotValue()
        numberOutputLabel.text = InitialValue.displayNumberLabel
    }
    
    private func operation( _ operation: OperationCalculator) {
        if InitialValue.currentOperation != .unknown {
            if !InitialValue.displayNumberLabel.isEmpty {
                InitialValue.newCalculation = InitialValue.displayNumberLabel
                InitialValue.displayNumberLabel = ""
                opearationValue()
                if let result = Double(InitialValue.result), result.truncatingRemainder(dividingBy: 1) == 0 {
                    InitialValue.result = "\(Int(result))"
                }
                
                InitialValue.firstCalculation = InitialValue.result
                numberOutputLabel.text = InitialValue.result
            }
            InitialValue.currentOperation = operation
            
        } else {
            InitialValue.firstCalculation = InitialValue.displayNumberLabel
            InitialValue.currentOperation = operation
            InitialValue.displayNumberLabel = ""
        }
    }
}

