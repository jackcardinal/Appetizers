//
//  EmptyState.swift
//  Appetizers
//
//  Created by Jack Cardinal on 5/24/22.
//

import SwiftUI

struct EmptyState: View {
    
    let imageName: String
    let message: String
    

    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea(.all)
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                Text(message)
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
            .offset(y:-50)
        }
    }
}

struct EmptyState_Previews: PreviewProvider {
    static var previews: some View {
        EmptyState(imageName: "empty-order", message: "This is a test message. \nI'm making it a little long for testing.")
    }
}
