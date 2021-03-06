//
//  LoginPresenterTests.swift
//  BankApp
//
//  Created by Gabriel Henrique Santos Pereira on 16/04/19.
//  Copyright (c) 2019 Gabriel Henrique Santos Pereira. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

@testable import BankApp

import XCTest

class LoginPresenterTests: XCTestCase {
    // MARK: Subject under test
    var sut: LoginPresenter!
    
    // MARK: Test lifecycle
    override func setUp() {
        super.setUp()
        setupLoginPresenter()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    // MARK: Test setup
    func setupLoginPresenter() {
        sut = LoginPresenter()
    }
}
