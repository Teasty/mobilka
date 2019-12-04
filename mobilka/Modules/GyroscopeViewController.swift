//
//  GyroscopeViewController.swift
//  mobilka
//
//  Created by Андрей Лихачев on 04.12.2019.
//  Copyright © 2019 Андрей Лихачев. All rights reserved.
//

import UIKit
import CoreMotion

class GyroscopeViewController: UIViewController {
    @IBOutlet weak var xLabel: UILabel!
    @IBOutlet weak var yLabel: UILabel!
    @IBOutlet weak var zLabel: UILabel!
    
    var motionManager = CMMotionManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        motionManager.gyroUpdateInterval = 0.5
        
        motionManager.startGyroUpdates(to: OperationQueue.current!, withHandler: {(data, error) in
            if let data = data{
                self.xLabel.text = "x: " + String(format: "%.3f", data.rotationRate.x)
                self.yLabel.text = "x: " + String(format: "%.3f", data.rotationRate.y)
                self.zLabel.text = "x: " + String(format: "%.3f", data.rotationRate.z)
            }
        })
    }
    
    let transition = SlideTransition()
    @IBAction func menuButtonTapped(_ sender: Any) {
        guard let menuVC = storyboard?.instantiateViewController(withIdentifier: "Menu") else {return}
        menuVC.modalPresentationStyle = .overCurrentContext
        menuVC.transitioningDelegate = self
        present(menuVC, animated: true)
    }
}

extension GyroscopeViewController: UIViewControllerTransitioningDelegate {
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.isPresenting = true
        return transition
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.isPresenting = false
        return transition
    }
}
