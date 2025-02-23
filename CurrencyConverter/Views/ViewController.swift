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
            
            self.performSegue(withIdentifier: "toConvertedCurrency", sender: self)
            
        } else {
            errorLabel.isHidden = false
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toConvertedCurrency" {
            let navigation = segue.destination as! ConvertedCurrencyView
            navigation.converterLogic = converterLogic
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

