//
//  ApplicationCoordinator.swift
//  CoordinatorProject
//
//  Created by Jonathan Go on 24.07.22.
//

import SwiftUI
import UIKit

class ApplicationCoordinator: Coordinator {
    
    var window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        //let home = ViewController()
        let home = UIHostingController(rootView: ContentView())
        let navController = UINavigationController(rootViewController: home)
        window.rootViewController = navController
    }
    
    
}
