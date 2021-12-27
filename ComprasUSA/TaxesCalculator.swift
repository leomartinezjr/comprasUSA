//
//  TaxesCalculator.swift
//  ComprasUSA
//
//  Created by Luana Martinez de La Flor on 13/09/21.
//

import Foundation


class TaxesCalculation {
    
    static let shared = TaxesCalculation()
    
    var dolar: Double = 5.5
    var iof: Double = 6.38
    var stateTax: Double = 7.0
    var shoppingValue: Double =  0
    
    let formatter = NumberFormatter()
    
    
    var shoppingValueInReal: Double {
        return shoppingValue * dolar
    }
    var stateTaxValue: Double {
        return shoppingValue * stateTax/100
    }
    var iofValue: Double{
        return (shoppingValue + stateTax) * iof/100
    }
    
    
    func calculate(usingCreditCard: Bool)-> Double{
        
        var finalValue = shoppingValue + stateTax
        if usingCreditCard{
            finalValue += iofValue
            }
        return finalValue * dolar
    }
    
    func converToDouble(_ string: String) -> Double {
        formatter.numberStyle = .none // trata o stilo de nmero nulo
        return formatter.number(from: string)!.doubleValue // converte string em double
        
    }
                
    func getFormatteValue(of value: Double, whithCurrency currancy: String) -> String {
        
        formatter.numberStyle = .currency
        formatter.currencySymbol = currancy
        formatter.alwaysShowsDecimalSeparator = true
        
        return formatter.string(for: value)!
    }
    
    
    
    private init (){
        formatter.usesGroupingSeparator = true // para usar os grupos de numeros
        
        
        
    }
    
    
    
}
