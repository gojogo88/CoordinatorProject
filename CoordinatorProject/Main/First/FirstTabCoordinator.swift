//
//  FirstTabCoordinator.swift
//  CoordinatorProject
//
//  Created by Jonathan Go on 24.07.22.
//

import UIKit
import SwiftUI

class FirstTabCoordinator: Coordinator {
    
    var rootViewController: UINavigationController
    
    let viewModel = FirstTabViewModel()
    
    init() {
        rootViewController = UINavigationController()
        rootViewController.navigationBar.prefersLargeTitles = true
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
