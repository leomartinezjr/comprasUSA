//
//  SettingsViewController.swift
//  ComprasUSA
//
//  Created by Luana Martinez de La Flor on 10/09/21.
//

import UIKit

class SettingsViewController: UIViewController {

    
    @IBOutlet weak var tfDolar: UITextField!
    @IBOutlet weak var tfIOF: UITextField!
    @IBOutlet weak var tfStateTaxes: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tfDolar.text = tc.getFormatteValue(of: tc.dolar, whithCurrency: " ")
        tfIOF.text = tc.getFormatteValue(of: tc.iof, whithCurrency: " ")
        tfStateTaxes.text = tc.getFormatteValue(of: tc.stateTax, whithCurrency: " ")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true) // se usuario tocaro fora da tela o teclado desaparece
        
    }
    
    func setValues(){
        tc.dolar = tc.converToDouble(tfDolar.text!)
        tc.iof = tc.converToDouble(tfIOF.text!)
        tc.stateTax = tc.converToDouble(tfStateTaxes.text!)
    }
    
    
    
    
}


extension SettingsViewController: UITextFieldDelegate{
    func textFieldDidEndEditing(_ textField: UITextField) { // ativa quando o usuario sai do campo
        setValues()
    }
    
    
}
