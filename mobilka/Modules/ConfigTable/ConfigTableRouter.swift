//
//  ConfigTableRouter.swift
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

@objc protocol ConfigTableRoutingLogic
{
  //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol ConfigTableDataPassing
{
  var dataStore: ConfigTableDataStore? { get }
}

class ConfigTableRouter: NSObject, ConfigTableRoutingLogic, ConfigTableDataPassing
{
  weak var viewController: ConfigTableViewController?
  var dataStore: ConfigTableDataStore?
  
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
  
  //func navigateToSomewhere(source: ConfigTableViewController, destination: SomewhereViewController)
  //{
  //  source.show(destination, sender: nil)
  //}
  
  // MARK: Passing data
  
  //func passDataToSomewhere(source: ConfigTableDataStore, destination: inout SomewhereDataStore)
  //{
  //  destination.name = source.name
  //}
}
