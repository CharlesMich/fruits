//
//  SettingsView.swift
//  Fruits
//
//  Created by Charles Michael on 9/2/24.
//

import SwiftUI

struct SettingsView: View {
//    MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
//    MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView (.vertical, showsIndicators: false){
                VStack (spacing: 20) {
//                    MARK: - SECTION 1
                    
                    GroupBox(
                        label:
                            HStack {
                                Text("Frutcus".uppercased())
                                    .fontWeight(.bold)
                                     Spacer()
                                     Image(systemName: "info.circle")
                            }
                               
                                ) {
                        Text("Hello World")
                    }
//                    MARK: - SECTION 2
//                    MARK: - SECTION 3
                    
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                } //: VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "xmark")
                }
                )
                .padding()
            }
           
        }
        
    }
}

#Preview {
    SettingsView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
