//
//  CalculatorViewController.swift
//  Tipsy
//
//  Created by admin on 05.04.2022.
//

import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var splitNumberLabel: UILabel!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!

    var tip = 0.10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false

        sender.isSelected = true
        let buttonTitle = sender.currentTitle
        let buttonTitleMinusPercentSign =  String(buttonTitle!.dropLast())
        let buttonTitleAsANumber = Double(buttonTitleMinusPercentSign)!
        tip = buttonTitleAsANumber / 100

    }
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
    }
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
    }
}

