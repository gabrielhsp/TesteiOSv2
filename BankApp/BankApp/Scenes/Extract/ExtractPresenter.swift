//
//  ExtractPresenter.swift
//  BankApp
//
//  Created by Gabriel Henrique Santos Pereira on 12/04/19.
//  Copyright (c) 2019 Gabriel Henrique Santos Pereira. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol ExtractPresentationLogic
{
    func presentSomething(response: Extract.Something.Response)
}

class ExtractPresenter: ExtractPresentationLogic
{
    weak var viewController: ExtractDisplayLogic?
    
    // MARK: Do something
    
    func presentSomething(response: Extract.Something.Response)
    {
        let viewModel = Extract.Something.ViewModel()
        viewController?.displaySomething(viewModel: viewModel)
    }
}
