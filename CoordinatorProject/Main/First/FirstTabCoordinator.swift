//
//  FirstTabCoordinator.swift
//  CoordinatorProject
//
//  Created by Jonathan Go on 24.07.22.
//

import UIKit

class FirstTabCoordinator: Coordinator {
    
    var rootViewController: UINavigationController
    
    init() {
        rootViewController = UINavigationController()
        rootViewController.navigationBar.prefersLargeTitles = true
    }
    
    lazy var firstVC: FirstViewController = {
        let vc = FirstViewController()
        vc.title = "First VC Title"
        return vc
    }()
    
    func start() {
        rootViewController.setViewControllers([firstVC], animated: false)
    }
    
    
}
