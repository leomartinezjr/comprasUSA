//
//  TaxesViewController.swift
//  ComprasUSA
//
//  Created by Luana Martinez de La Flor on 10/09/21.
//

import UIKit

class TaxesViewController: UIViewController {

    @IBOutlet weak var lbDolar: UILabel!
    @IBOutlet weak var lbStateTax: UILabel!
    @IBOutlet weak var lbIOFDescription: UILabel!
    @IBOutlet weak var lbIOF: UILabel!
    @IBOutlet weak var swCreditCard: UISwitch!
    @IBOutlet weak var lbReal: UILabel!
    @IBOutlet weak var lbSetateTaxDescription: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        calculateTaxes()
    }
    
    
    @IBAction func changeIOF(_ sender: UISwitch) {
        calculateTaxes()
    }
    
    
    
    func calculateTaxes(){
        lbSetateTaxDescription.text = "Imposto do Estado (\(tc.getFormatteValue(of: tc.stateTax, whithCurrency: "")))"
        lbIOFDescription.text = "IOF (\(tc.getFormatteValue(of: tc.iof, whithCurrency: "")))"
        
        lbDolar.text = tc.getFormatteValue(of: tc.shoppingValue, whithCurrency: "US$ ")
        lbStateTax.text = tc.getFormatteValue(of: tc.stateTaxValue, whithCurrency: "US$ ")
        lbIOF.text =  tc.getFormatteValue(of: tc.iofValue, whithCurrency: "R$ ")
        
        let real = tc.calculate(usingCreditCard: swCreditCard.isOn)
        lbReal.text = tc.getFormatteValue(of: real, whithCurrency: "R$ ")
        
        
    }
        
    }
    
    
    


