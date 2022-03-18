//
//  CalcultorViewController.swift
//  Calculator
//
//  Created by 서원지 on 2022/03/18.
//

import UIKit

class CalcultorViewController: UIViewController {
    @IBOutlet weak var numberOutputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func NumberButtonTapped(_ sender: UIButton) {
        guard let numberValue = sender.title(for: .normal) else  {return}
        if  InitialValue.displayNumberLabel.count < 9 {
            InitialValue.displayNumberLabel += numberValue
            numberOutputLabel.text = InitialValue.displayNumberLabel
        }
    }
    
    @IBAction func clearButtonTapped(_ sender: UIButton) {
        makeZeroValue()
        numberOutputLabel.text =  "0"
    }
    
    @IBAction func additionSubtractionOperatorButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func percentageButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func divideButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func mutiplyButtonTapped(_ sender: Any) {
        
    }
    
    @IBAction func subtractButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func addButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func equalButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func dotButtonTapped(_ sender: UIButton) {
        makeDotValue()
        numberOutputLabel.text = InitialValue.displayNumberLabel
    }
}

