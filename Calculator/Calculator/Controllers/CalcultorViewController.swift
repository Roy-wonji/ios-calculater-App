//
//  CalcultorViewController.swift
//  Calculator
//
//  Created by Roy on 2022/03/22.
//

import UIKit

final class CalcultorViewController: UIViewController {
    @IBOutlet weak var numberOutputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var calc = Operation(baseNumber: 3, operationNodes:[OperationNode(operators: .plus, operand: 5),
                                                     OperationNode(operators: .multiply, operand: 2)] )
       
        let result = calc.mergeOperationNodes()
        // Do any additional setup after loading the view.
    }
    
    @IBAction private func NumberButtonTapped(_ sender: UIButton) {
       
    }
    
    @IBAction private func clearButtonTapped(_ sender: UIButton) {
       
    }
    
    @IBAction private func additionSubtractionOperatorButtonTapped(_ sender: UIButton) {
       
    }
    
    @IBAction private func percentageButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction private func divideButtonTapped(_ sender: UIButton) {
       
    }
    
    @IBAction private func mutiplyButtonTapped(_ sender: Any) {
       
    }
    
    @IBAction private func subtractButtonTapped(_ sender: UIButton) {
       
    }
    
    @IBAction private func addButtonTapped(_ sender: UIButton) {
     
    }
    
    @IBAction private func equalButtonTapped(_ sender: UIButton) {
     
    }
    
    @IBAction private func dotButtonTapped(_ sender: UIButton) {
      
    }
    
   
}

