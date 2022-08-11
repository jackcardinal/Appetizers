//
//  LoadingView.swift
//  Appetizers
//
//  Created by Jack Cardinal on 3/24/22.
//

import SwiftUI


struct ActivityIndicator: UIViewRepresentable {

    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicationView = UIActivityIndicatorView(style: .large)
        activityIndicationView.color = UIColor.brandPrimary
        activityIndicationView.startAnimating()
        return activityIndicationView
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
 
}


struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea(.all)
           // ActivityIndicator()
            //updated for iOS 15
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: .brandPrimary))
                .scaleEffect(2)
        }
    }
}
