//
//  MenuViewController.swift
//  mobilka
//
//  Created by Андрей Лихачев on 29.11.2019.
//  Copyright © 2019 Андрей Лихачев. All rights reserved.
//

import UIKit

class MenuViewController: UITableViewController {
    
    enum MenuItems: Int {
        case web
        case map
        case create
        case info
        case gyro
        case logout
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let menuItem = MenuItems(rawValue: indexPath.row) else { return }
        dismiss(animated: true, completion: {
            switch menuItem {
            case .web:
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0){
                    let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
                    let redViewController = mainStoryBoard.instantiateViewController(withIdentifier: "GitNavigation") as! UINavigationController
                    let appDelegate = UIApplication.shared.delegate as! AppDelegate
                    appDelegate.window?.rootViewController = redViewController
                }
                case .map:
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0){
                    let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
                    let redViewController = mainStoryBoard.instantiateViewController(withIdentifier: "MapNavigation") as! UINavigationController
                    let appDelegate = UIApplication.shared.delegate as! AppDelegate
                    appDelegate.window?.rootViewController = redViewController
                }
                case .create:
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0){
                    let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
                    let redViewController = mainStoryBoard.instantiateViewController(withIdentifier: "ContactNavigation") as! UINavigationController
                    let appDelegate = UIApplication.shared.delegate as! AppDelegate
                    appDelegate.window?.rootViewController = redViewController
                }
                case .info:
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0){
                    let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
                    let redViewController = mainStoryBoard.instantiateViewController(withIdentifier: "InfoNavigation") as! UINavigationController
                    let appDelegate = UIApplication.shared.delegate as! AppDelegate
                    appDelegate.window?.rootViewController = redViewController
                }
                case .gyro:
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0){
                    let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
                    let redViewController = mainStoryBoard.instantiateViewController(withIdentifier: "GyroNavigation") as! UINavigationController
                    let appDelegate = UIApplication.shared.delegate as! AppDelegate
                    appDelegate.window?.rootViewController = redViewController
                }
                case .logout:
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0){
                    let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
                    let redViewController = mainStoryBoard.instantiateViewController(withIdentifier: "Login") as! LoginViewController
                    let appDelegate = UIApplication.shared.delegate as! AppDelegate
                    appDelegate.window?.rootViewController = redViewController
                }
            }
        })
    }
}
