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
    
    var childCoordinators = [Coordinator]()
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let onboardingCoordinator = OnboardingCoordinator()
        onboardingCoordinator.start()
        self.childCoordinators = [onboardingCoordinator]
        window.rootViewController = onboardingCoordinator.rootViewController
    }
    
    
}
