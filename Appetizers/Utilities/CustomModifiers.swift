//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Jack Cardinal on 5/30/22.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}
