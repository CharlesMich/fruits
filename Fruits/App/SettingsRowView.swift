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
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }
                else {
                    EmptyView()
                }
            }
        }
    }
}

#Preview {
    Group {
        SettingsRowView(name: "Developer", content: "John/ Jane")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
        SettingsRowView(name: "website", linkLabel: "swiftUI Masterclass", linkDestination: "Swiftuimasterclass.com")
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
  
}
