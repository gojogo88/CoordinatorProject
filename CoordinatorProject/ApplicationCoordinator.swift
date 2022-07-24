//
//  ApplicationCoordinator.swift
//  CoordinatorProject
//
//  Created by Jonathan Go on 24.07.22.
//

import Combine
import SwiftUI
import UIKit

class ApplicationCoordinator: Coordinator {
    
    var window: UIWindow
    
    var childCoordinators = [Coordinator]()
    
    let hasSeenOboarding = CurrentValueSubject<Bool, Never>(false)
    var subscriptions = Set<AnyCancellable>()

    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        
        hasSeenOboarding.sink { [weak self] hasSeen in
            if hasSeen {
                let mainCoordinator = MainCoordinator()
                mainCoordinator.start()
                self?.childCoordinators = [mainCoordinator]
                self?.window.rootViewController = mainCoordinator.rootViewController
            } else if let hasSeenOboarding = self?.hasSeenOboarding {
                let onboardingCoordinator = OnboardingCoordinator(hasSeenOnboarding: hasSeenOboarding)
                onboardingCoordinator.start()
                self?.childCoordinators = [onboardingCoordinator]
                self?.window.rootViewController = onboardingCoordinator.rootViewController
            }
        }.store(in: &subscriptions)
    }
}
