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
    
    var amount: String = ""
    var currency1Amount: String = ""
    var currency2Amount: String = ""
    var currency3Amount: String = ""
    var currency4Amount: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func convertBtn(_ sender: UIButton) {
        if(intCheck(textField.text!)) {
            errorLabel.isHidden = true
            converterLogic.convert(Int(textField.text!)!)
            amount = String(converterLogic.getAmount())
            if(converterLogic.getCurrencyIsOn(1)) {
                currency1Amount = String(format: "%.2f", converterLogic.getCurrAmount1())
            }
            if(converterLogic.getCurrencyIsOn(2)) {
                currency2Amount = String(format: "%.2f", converterLogic.getCurrAmount2())
            }
            if(converterLogic.getCurrencyIsOn(3)) {
                currency3Amount = String(format: "%.2f", converterLogic.getCurrAmount3())
            }
            if(converterLogic.getCurrencyIsOn(4)) {
                currency4Amount = String(format: "%.2f", converterLogic.getCurrAmount4())
            }
            
            self.performSegue(withIdentifier: "toConvertedCurrency", sender: self)
            
        } else {
            errorLabel.isHidden = false
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toConvertedCurrency" {
            let navigation = segue.destination as! ConvertedCurrencyView
            navigation.amount = amount
            navigation.currency1Amount = currency1Amount
            navigation.currency2Amount = currency2Amount
            navigation.currency3Amount = currency3Amount
            navigation.currency4Amount = currency4Amount
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

