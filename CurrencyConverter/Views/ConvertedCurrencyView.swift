//
//  ConvertedCurrencyView.swift
//  CurrencyConverter
//
//  Created by Daniel Dye on 2/23/25.
//

import UIKit

class ConvertedCurrencyView: UIViewController {
    
    var amount: String = ""
    var currency1Amount: String = ""
    var currency2Amount: String = ""
    var currency3Amount: String = ""
    var currency4Amount: String = ""
    
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var currency1Label: UILabel!
    @IBOutlet weak var currency2Label: UILabel!
    @IBOutlet weak var currency3Label: UILabel!
    @IBOutlet weak var currency4Label: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        if()
        amountLabel.text = amount + " USD"
        currency1Label.text = currency1Amount
        currency2Label.text = currency2Amount
        currency3Label.text = currency3Amount
        currency4Label.text = currency4Amount
        
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
