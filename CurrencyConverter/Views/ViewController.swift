//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Daniel Dye on 2/23/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    var converterLogic = ConverterLogic()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func convertBtn(_ sender: UIButton) {
        if(intCheck(textField.text!)) {
            errorLabel.isHidden = true
            converterLogic.convert(Int(textField.text!)!)
            print("Amount \(converterLogic.getAmount())")
            print("Currency1 \(converterLogic.getCurrAmount1())")
            print("Currency2 \(converterLogic.getCurrAmount2())")
            print("Currency3 \(converterLogic.getCurrAmount3())")
            print("Currency4 \(converterLogic.getCurrAmount4())")
        } else {
            errorLabel.isHidden = false
        }
    }
    
    @IBAction func flipSwitch1(_ sender: UISwitch) {
        converterLogic.flipSwitch(1, sender.isOn)
    }
    @IBAction func flipSwitch2(_ sender: UISwitch) {
        converterLogic.flipSwitch(2, sender.isOn)
    }
    @IBAction func flipSwitch3(_ sender: UISwitch) {
        converterLogic.flipSwitch(3, sender.isOn)
    }
    @IBAction func flipSwitch4(_ sender: UISwitch) {
        converterLogic.flipSwitch(4, sender.isOn)
    }
    
    func intCheck(_ string: String) -> Bool {
        if (Int(string) != nil) { return true }
        else { return false }
    }
}

