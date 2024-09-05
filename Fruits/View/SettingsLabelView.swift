//
//  SettingsLabelView.swift
//  Fruits
//
//  Created by Charles Michael on 9/4/24.
//

import SwiftUI

struct SettingsLabelView: View {
//    MARK: - PROPERTIES
    
    var labelText: String
    var labelImage: String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
                 Spacer()
                 Image(systemName: labelImage)
        }
    }
}

// MARK: - PREVIEW

#Preview {
    SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
        .previewLayout(.sizeThatFits)
        .padding()
}
