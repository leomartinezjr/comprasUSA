//
//  ViewController.swift
//  ComprasUSA
//
//  Created by Luana Martinez de La Flor on 10/09/21.
//

import UIKit

class ShoppingViewController: UIViewController {
    
    

    @IBOutlet weak var tfDolar: UITextField!
    @IBOutlet weak var lbRealDescription: UILabel!
    
    @IBOutlet weak var lbReal: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tfDolar.resignFirstResponder() // tira o teclado
        setAmmout()

    }

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        tfDolar.resignFirstResponder()
        setAmmout()
    }
    
    
    
    func setAmmout()  {
        tc.shoppingValue = tc.converToDouble(tfDolar.text!)
        lbReal.text = tc.getFormatteValue(of: tc.shoppingValue * tc.dolar , whithCurrency: "R$ ")
        let dolar = tc.getFormatteValue(of: tc.dolar, whithCurrency: "")
        lbRealDescription.text = "Valor sem impostpos (dólar \(dolar))"
    }

}

