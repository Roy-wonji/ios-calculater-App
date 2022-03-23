//
//  CalcultorViewController.swift
//  Calculator
//
//  Created by Roy on 2022/03/23.
//

import UIKit

final class CalcultorViewController: UIViewController {
    @IBOutlet weak var clearButton: MakeRoundButton!
    @IBOutlet weak var operationLabel: UILabel!
    @IBOutlet weak var currentNumberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func numberPadTapped(_ sender: UIButton) {
        let buttonNumber  = sender.tag
        Common.currentNumber = Common.currentNumber * 10  + Double(buttonNumber)
        currentNumberLabel.text = String(Common.currentNumber)
    }
    
    @IBAction func clearButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func plusMinusButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func percentButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func operatorButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func showReultButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func pointButtonTapped(_ sender: UIButton) {
        
    }
}

