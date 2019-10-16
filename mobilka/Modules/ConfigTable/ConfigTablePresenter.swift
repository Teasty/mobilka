//
//  ConfigTablePresenter.swift
//  mobilka
//
//  Created by Илья Ляшенко on 15.10.2019.
//  Copyright (c) 2019 Андрей Лихачев. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol ConfigTablePresentationLogic
{
  func presentSomething(response: ConfigTable.DeviceInfo.Response)
}

class ConfigTablePresenter: ConfigTablePresentationLogic
{
  weak var viewController: ConfigTableDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: ConfigTable.DeviceInfo.Response)
  {
    let viewModel = ConfigTable.DeviceInfo.ViewModel()
    viewController?.displaySomething(viewModel: viewModel)
  }
}