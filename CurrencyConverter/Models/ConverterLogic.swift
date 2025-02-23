//
//  converterLogic.swift
//  CurrencyConverter
//
//  Created by Daniel Dye on 2/23/25.
//

import Foundation

struct ConverterLogic {
    
    //Amount variables
    var amount: Int = 0
    var currencyAmount1: Double = 0.0
    var currencyAmount2: Double = 0.0
    var currencyAmount3: Double = 0.0
    var currencyAmount4: Double = 0.0
    
    //Booleans for currency switches
    var currency1IsOn = true
    var currency2IsOn = true
    var currency3IsOn = true
    var currency4IsOn = true
    
    //Rates taken from Google.com on 02/23/25
    //EUR rate
    let currencyRate1 = 0.96
    //GBP rate
    let currencyRate2 = 0.79
    //JPY rate
    let currencyRate3 = 149.22
    //CAD rate
    let currencyRate4 = 1.42
    
    //Takes the number of a switch and updates the model variable with the state of the view's switch
    mutating func flipSwitch(_ switchNumber: Int,_ isOn: Bool) {
        switch switchNumber {
        case 1:
            currency1IsOn = isOn
            break
        case 2:
            currency2IsOn = isOn
            break
        case 3:
            currency3IsOn = isOn
            break
        case 4:
            currency4IsOn = isOn
            break
        default:
            print("invalid switch name passed to function ConverterLogic.flipSwitch")
        }
    }
    
    //Calculates amounts based on a given USD amount.
    mutating func convert(_ usd: Int) {
        amount = usd
        currencyAmount1 = Double(usd) * currencyRate1
        currencyAmount2 = Double(usd) * currencyRate2
        currencyAmount3 = Double(usd) * currencyRate3
        currencyAmount4 = Double(usd) * currencyRate4
    }
    
    //Amount get functions
    func getCurrAmount1() -> Double {
        return currencyAmount1
    }
    func getCurrAmount2() -> Double {
        return currencyAmount2
    }
    func getCurrAmount3() -> Double {
        return currencyAmount3
    }
    func getCurrAmount4() -> Double {
        return currencyAmount4
    }
    func getAmount() -> Int {
        return amount
    }

    //Returns to view if a given currency is on in the model
    func getCurrencyIsOn(_ currency: Int) -> Bool {
        switch currency {
        case 1:
            return currency1IsOn
        case 2:
            return currency2IsOn
        case 3:
            return currency3IsOn
        case 4:
            return currency4IsOn
        default:
            return false
        }
    }
    
}
