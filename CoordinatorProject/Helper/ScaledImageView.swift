//
//  ScaledImageView.swift
//  CoordinatorProject
//
//  Created by Jonathan Go on 24.07.22.
//

import SwiftUI

struct ScaledImageView: View {
    let name: String
    
    var body: some View {
        Image(name)
            .resizable()
            .scaledToFit()
    }
}

struct ScaledImageView_Previews: PreviewProvider {
    static var previews: some View {
        ScaledImageView(name: "kimetsu")
    }
}
