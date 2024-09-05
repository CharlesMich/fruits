//
//  SettingsRowView.swift
//  Fruits
//
//  Created by Charles Michael on 9/4/24.
//

import SwiftUI

struct SettingsRowView: View {
    
//    MARK: - Prop
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
//    MARK: - Body
    var body: some View {
        HStack {
            Text(name).foregroundColor(Color.gray)
            Spacer()
            Text(content ?? <#default value#>)
        }
    }
}

#Preview {
    SettingsRowView(name: "Charles", content: "John/ Jane")
}
