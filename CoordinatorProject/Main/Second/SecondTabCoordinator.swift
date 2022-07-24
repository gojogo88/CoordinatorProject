//
//  SecondTabCoordinator.swift
//  CoordinatorProject
//
//  Created by Jonathan Go on 24.07.22.
//

import UIKit

class SecondTabCoordinator: Coordinator {
    
    var rootViewController = UINavigationController()
    
    lazy var secondVC: SecondViewController = {
        let vc = SecondViewController()
        vc.title = "Second VC Title"
        return vc
    }()
    
    func start() {
        rootViewController.setViewControllers([secondVC], animated: false)
    }
    
    
}
