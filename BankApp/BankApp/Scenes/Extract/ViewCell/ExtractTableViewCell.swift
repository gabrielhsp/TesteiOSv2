//
//  ExtractTableViewCell.swift
//  BankApp
//
//  Created by Gabriel Henrique Santos Pereira on 14/04/19.
//  Copyright © 2019 Gabriel Henrique Santos Pereira. All rights reserved.
//

import UIKit

class ExtractTableViewCell: UITableViewCell {
    @IBOutlet weak var viewExtract: UIView!
    @IBOutlet weak var labelExtractTitle: UILabel!
    @IBOutlet weak var labelExtractDate: UILabel!
    @IBOutlet weak var labelExtractDescription: UILabel!
    @IBOutlet weak var labelExtractValue: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupLayout()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    private func setupLayout() {
        self.viewExtract.layer.borderWidth = 1
        self.viewExtract.layer.borderColor = #colorLiteral(red: 0.8588235294, green: 0.8745098039, blue: 0.8901960784, alpha: 0.3)
        self.viewExtract.layer.shadowColor = #colorLiteral(red: 0.8509803922, green: 0.8862745098, blue: 0.9137254902, alpha: 1)
        self.viewExtract.layer.shadowOpacity = 1
        self.viewExtract.layer.cornerRadius = 6
        self.viewExtract.layer.shadowOffset = CGSize(width: 0, height: 5)
        self.viewExtract.layer.shadowRadius = 10
    }
    
    private func valuesArePositive(value: Double?) {
        guard let value = value else { return }
        
        if value > 0 {
            self.labelExtractValue.textColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        } else {
            self.labelExtractValue.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        }
    }
    
    func renderExtractData(extract: ExtractResponse.ExtractData) {
        guard let extractDate = extract.date else { return }
        
        valuesArePositive(value: extract.value)
        
        self.labelExtractTitle.text = extract.title
        self.labelExtractDescription.text = extract.description
        self.labelExtractDate.text = extractDate.convertStringToDateFormat(date: extractDate)
        self.labelExtractValue.text = extract.value?.transformToCurrency
    }
}
