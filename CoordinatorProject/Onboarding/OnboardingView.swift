//
//  OnboardingView.swift
//  CoordinatorProject
//
//  Created by Jonathan Go on 24.07.22.
//

import SwiftUI

struct OnboardingView: View {
    
    var doneRequested: () -> Void
    
    var body: some View {
        TabView {
            ScaledImageView(name: "kimetsu")
                .tag(0)
            ScaledImageView(name: "zenitsu")
                .tag(0)
            ScaledImageView(name: "tanjiro")
                .tag(0)
            
            Button("Done")  {
                doneRequested()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .background(Color.black.edgesIgnoringSafeArea(.all))
        
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(doneRequested: { })
    }
}
