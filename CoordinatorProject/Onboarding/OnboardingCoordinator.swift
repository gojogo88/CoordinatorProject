//
//  OnboardingCoordinator.swift
//  CoordinatorProject
//
//  Created by Jonathan Go on 24.07.22.
//

import Foundation
import SwiftUI

class OnboardingCoordinator: Coordinator {
    
    var rootViewController = UIViewController()
    
    func start() {
        let view = OnboardingView {
            
        }
        
        rootViewController = UIHostingController(rootView: view)
    }
}
