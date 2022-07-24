//
//  MainCoordinator.swift
//  CoordinatorProject
//
//  Created by Jonathan Go on 24.07.22.
//

import UIKit

class MainCoordinator: Coordinator {
    
    var rootViewController: UITabBarController
    var childCoordinators = [Coordinator]()
    
    init() {
        self.rootViewController = UITabBarController()
        rootViewController.tabBar.isTranslucent = true
        rootViewController.tabBar.backgroundColor = .systemGreen
    }
    
    func start() {
        let firstCoordinator = FirstTabCoordinator()
        firstCoordinator.start()
        self.childCoordinators.append(firstCoordinator)
        let firstViewController = firstCoordinator.rootViewController
        setup(vc: firstViewController, title: "First Tab", imageName: "paperplane", selectedImageName: "paperplane.fill")
        
        let secondCoordinator = SecondTabCoordinator()
        secondCoordinator.start()
        self.childCoordinators.append(secondCoordinator)
        let secondViewController = secondCoordinator.rootViewController
        setup(vc: secondViewController, title: "Second Tab", imageName: "bell", selectedImageName: "bell.fill")
        
        self.rootViewController.viewControllers = [firstViewController, secondViewController]
    }
    
    func setup(vc: UIViewController, title: String, imageName: String, selectedImageName: String) {
        let defaultImage = UIImage(systemName: imageName)
        let selectedImage = UIImage(systemName: selectedImageName)
        let tabBarItem = UITabBarItem(title: title, image: defaultImage, selectedImage: selectedImage)
        vc.tabBarItem = tabBarItem
    }
}
