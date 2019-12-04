//
//  WebViewController.swift
//  mobilka
//
//  Created by Андрей Лихачев on 03.12.2019.
//  Copyright © 2019 Андрей Лихачев. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    @IBOutlet weak var WebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: "https://www.google.com/")
        let request = URLRequest(url: url!)
        
        WebView.load(request)
    }
    
    let transition = SlideTransition()
    
    @IBAction func menuButtonTapped(_ sender: Any) {
        guard let menuVC = storyboard?.instantiateViewController(withIdentifier: "Menu") else {return}
        menuVC.modalPresentationStyle = .overCurrentContext
        menuVC.transitioningDelegate = self
        present(menuVC, animated: true)
    }

}

extension WebViewController: UIViewControllerTransitioningDelegate {
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.isPresenting = true
        return transition
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.isPresenting = false
        return transition
    }
}
