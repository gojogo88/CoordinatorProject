//
//  FirstTabViewModel.swift
//  CoordinatorProject
//
//  Created by Jonathan Go on 24.07.22.
//

import Foundation

class FirstTabViewModel: ObservableObject {
    
    @Published var name: String = ""
    @Published var email: String = ""
}
