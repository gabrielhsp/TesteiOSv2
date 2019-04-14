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
        self.viewExtract.layer.shadowColor = #colorLiteral(red: 0.8588235294, green: 0.8745098039, blue: 0.8901960784, alpha: 1)
        self.viewExtract.layer.shadowOpacity = 1
        self.viewExtract.layer.cornerRadius = 6
        self.viewExtract.layer.shadowOffset = CGSize(width: 0, height: 5)
        self.viewExtract.layer.shadowRadius = 10
    }
    
    func renderExtractData(extract: ExtractResponse.ExtractData) {
        self.labelExtractTitle.text = extract.title
        self.labelExtractDescription.text = extract.description
        self.labelExtractDate.text = extract.date
        self.labelExtractValue.text = extract.value?.transformToCurrency
    }
}
