//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Daniel Dye on 2/23/25.
//

import UIKit

class ViewController: UIViewController {

    //Textfield for entering USD
    @IBOutlet weak var textField: UITextField!
    //Error message when non-integer is entered. Default is hidden
    @IBOutlet weak var errorLabel: UILabel!
    
    //Model for storing app data
    var converterLogic = ConverterLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //Convert button operation. Checks for valid integer entry before running conversion
    @IBAction func convertBtn(_ sender: UIButton) {
        if(intCheck(textField.text!)) {
            errorLabel.isHidden = true
            converterLogic.convert(Int(textField.text!)!)
            
            self.performSegue(withIdentifier: "toConvertedCurrency", sender: self)
            
        } else {
            //shows error label if not an integer
            errorLabel.isHidden = false
        }
    }
    
    //segue function. Passes converterLogic to ConvertedCurrencyView
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toConvertedCurrency" {
            let navigation = segue.destination as! ConvertedCurrencyView
            navigation.converterLogic = converterLogic
        }
    }
    
    
    //Operations for tracking the switch state and sending state to the model
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
    
    //Checks if String can convert to an integer
    func intCheck(_ string: String) -> Bool {
        if (Int(string) != nil) { return true }
        else { return false }
    }
}

