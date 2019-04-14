//
//  Double+Extensions.swift
//  BankApp
//
//  Created by Gabriel Henrique Santos Pereira on 13/04/19.
//  Copyright © 2019 Gabriel Henrique Santos Pereira. All rights reserved.
//

import Foundation

extension Double {
    var transformToCurrency: String {
        let numberFormatter = NumberFormatter()
        
        numberFormatter.numberStyle = .currency
        numberFormatter.locale = Locale(identifier: "pt_br")
        
        return numberFormatter.string(from: NSNumber(value: self))!
    }
}
