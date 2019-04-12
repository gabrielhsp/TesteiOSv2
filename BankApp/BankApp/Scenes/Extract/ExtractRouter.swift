//
//  ExtractRouter.swift
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

@objc protocol ExtractRoutingLogic
{
    //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol ExtractDataPassing
{
    var dataStore: ExtractDataStore? { get }
}

class ExtractRouter: NSObject, ExtractRoutingLogic, ExtractDataPassing
{
    weak var viewController: ExtractViewController?
    var dataStore: ExtractDataStore?
    
    // MARK: Routing
    
    //func routeToSomewhere(segue: UIStoryboardSegue?)
    //{
    //  if let segue = segue {
    //    let destinationVC = segue.destination as! SomewhereViewController
    //    var destinationDS = destinationVC.router!.dataStore!
    //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
    //  } else {
    //    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    //    let destinationVC = storyboard.instantiateViewController(withIdentifier: "SomewhereViewController") as! SomewhereViewController
    //    var destinationDS = destinationVC.router!.dataStore!
    //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
    //    navigateToSomewhere(source: viewController!, destination: destinationVC)
    //  }
    //}
    
    // MARK: Navigation
    
    //func navigateToSomewhere(source: ExtractViewController, destination: SomewhereViewController)
    //{
    //  source.show(destination, sender: nil)
    //}
    
    // MARK: Passing data
    
    //func passDataToSomewhere(source: ExtractDataStore, destination: inout SomewhereDataStore)
    //{
    //  destination.name = source.name
    //}
}
