//
//  ConfigTableViewController.swift
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

protocol ConfigTableDisplayLogic: class
{
    func displaySomething(viewModel: ConfigTable.DeviceInfo.ViewModel)
}

class ConfigTableViewController: UITableViewController, ConfigTableDisplayLogic
{
  var interactor: ConfigTableBusinessLogic?
  var router: (NSObjectProtocol & ConfigTableRoutingLogic & ConfigTableDataPassing)?

  // MARK: Object lifecycle
  
  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  {
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    setup()
  }
  
  required init?(coder aDecoder: NSCoder)
  {
    super.init(coder: aDecoder)
    setup()
  }
  
  // MARK: Setup
  
  private func setup()
  {
    let viewController = self
    let interactor = ConfigTableInteractor()
    let presenter = ConfigTablePresenter()
    let router = ConfigTableRouter()
    viewController.interactor = interactor
    viewController.router = router
    interactor.presenter = presenter
    presenter.viewController = viewController
    router.viewController = viewController
    router.dataStore = interactor
  }
  
  // MARK: Routing
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?)
  {
    if let scene = segue.identifier {
      let selector = NSSelectorFromString("routeTo\(scene)WithSegue:")
      if let router = router, router.responds(to: selector) {
        router.perform(selector, with: segue)
      }
    }
  }
    private let cellIdentifier = "prototype"
    private let viewModel = ConfigTable.DeviceInfo.ViewModel()

    
    
    
     // MARK: Table View Data Source Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         switch section {
         case 0:
             return 4
         default:
             return 0
         }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
         /*if (cell == nil) {
             cell = UITableViewCell(
                 style: .value1,
                 reuseIdentifier: cellIdentifier)
         }*/
        
        cell?.textLabel?.text = viewModel.keys[indexPath.row]
        cell?.detailTextLabel?.text = viewModel.info[indexPath.row]
         return cell!
     }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Device"
        case 1:
            return "More"
        default:
            return "WTF"
        }
    }

  // MARK: View lifecycle
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
    doSomething()
  }
  
  // MARK: Do something
    @IBAction func menuButtonTapped(_ sender: Any) {
        guard let menuVC = storyboard?.instantiateViewController(withIdentifier: "Menu") else {return}
        menuVC.modalPresentationStyle = .overCurrentContext
        menuVC.transitioningDelegate = self
        present(menuVC, animated: true)
    }
    @IBOutlet var table: UITableView!
    func doSomething()
  {
    let request = ConfigTable.DeviceInfo.Request()
    interactor?.doSomething(request: request)
    
  }
    
    let transition = SlideTransition()
    
    
    func displaySomething(viewModel: ConfigTable.DeviceInfo.ViewModel)
  {
    
    //
  }
}

extension ConfigTableViewController: UIViewControllerTransitioningDelegate {
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.isPresenting = true
        return transition
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.isPresenting = false
        return transition
    }
}
