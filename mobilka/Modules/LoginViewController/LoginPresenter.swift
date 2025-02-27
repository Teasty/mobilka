//
//  LoginPresenter.swift
//  mobilka
//
//  Created by Андрей Лихачев on 10/10/2019.
//  Copyright (c) 2019 Андрей Лихачев. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol LoginPresentationLogic
{
    func disableFields()
    func enableFields()
    func showNetworkError()
    func showValidateionError()
    func clearMessage()
    func login()
}

class LoginPresenter: LoginPresentationLogic
{
    func login() {
        viewController?.login()
    }
    
    func clearMessage() {
        viewController?.clearMessage()
    }
    
    func disableFields() {
        viewController?.disableFields()
    }
    
    func enableFields() {
        viewController?.enableFields()
    }
    
    func showNetworkError() {
        viewController?.showNetworkError()
    }
    
    func showValidateionError() {
        viewController?.showValidateionError()
    }
    
  weak var viewController: LoginDisplayLogic?
}
