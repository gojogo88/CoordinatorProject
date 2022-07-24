//
//  FirstTabCoordinator.swift
//  CoordinatorProject
//
//  Created by Jonathan Go on 24.07.22.
//

import UIKit
import SwiftUI

class FirstTabCoordinator: NSObject, Coordinator {
    
    var rootViewController: UINavigationController
    
    let viewModel = FirstTabViewModel()
    
    override init() {
        rootViewController = UINavigationController()
        rootViewController.navigationBar.prefersLargeTitles = true
        super.init()
        
        rootViewController.delegate = self
    }
    
    lazy var firstVC: FirstViewController = {
        let vc = FirstViewController()
        vc.viewModel = viewModel
        vc.showDetailRequested = { [weak self] in
            self?.goToDetail()
        }
        vc.title = "First VC Title"
        return vc
    }()
    
    func start() {
        rootViewController.setViewControllers([firstVC], animated: false)
    }
    
    func goToDetail() {
        let detailVC = UIHostingController(rootView: FirstDetailView(viewModel: viewModel))
        rootViewController.pushViewController(detailVC, animated: true)
    }
}

extension FirstTabCoordinator: UINavigationControllerDelegate {
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        if viewController as? UIHostingController<FirstDetailView> != nil {
            print("Detail will be shown")
        } else if viewController as? FirstViewController != nil {
            print("First vc will be shown")
        }
    }
}
