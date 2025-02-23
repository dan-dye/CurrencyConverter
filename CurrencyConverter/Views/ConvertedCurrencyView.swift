//
//  ConvertedCurrencyView.swift
//  CurrencyConverter
//
//  Created by Daniel Dye on 2/23/25.
//

import UIKit

class ConvertedCurrencyView: UIViewController {
    
    var converterLogic: ConverterLogic?
    
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var currency1Label: UILabel!
    @IBOutlet weak var currency2Label: UILabel!
    @IBOutlet weak var currency3Label: UILabel!
    @IBOutlet weak var currency4Label: UILabel!
    
    @IBOutlet weak var currencyGroup1: UIStackView!
    @IBOutlet weak var currencyGroup2: UIStackView!
    @IBOutlet weak var currencyGroup3: UIStackView!
    @IBOutlet weak var currencyGroup4: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        amountLabel.text = "USD \(String(converterLogic!.getAmount()))"
        
        if(converterLogic!.getCurrencyIsOn(1)) {
            currency1Label.text = String(format: "%.2f", converterLogic!.getCurrAmount1())
        } else { currencyGroup1.removeFromSuperview() }
        
        if(converterLogic!.getCurrencyIsOn(2)) {
            currency2Label.text = String(format: "%.2f", converterLogic!.getCurrAmount2())
        } else { currencyGroup2.removeFromSuperview() }
        
        if(converterLogic!.getCurrencyIsOn(3)) {
            currency3Label.text = String(format: "%.2f", converterLogic!.getCurrAmount3())
        } else { currencyGroup3.removeFromSuperview() }
        
        if(converterLogic!.getCurrencyIsOn(4)) {
            currency4Label.text = String(format: "%.2f", converterLogic!.getCurrAmount4())
        } else { currencyGroup4.removeFromSuperview() }
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
