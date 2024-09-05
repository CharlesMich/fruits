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
                            SettingsLabelView(labelText: "fructus", labelImage: "info.circle")
                               
                                ) {
                                    
                                    Divider().padding(.vertical, 4)
                                    HStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10){
                                        Image("logo")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 80, height: 80)
                                            .cornerRadius(9)
                                        Text("Most fruits are natural low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more ")
                                            .font(.footnote)
                                    }
                    }
//                    MARK: - SECTION 2
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone") 
                        ){
                            Divider().padding(.vertical, 4)
                            HStack {
                                Text("Developer").foregroundColor(Color.gray)
                                Spacer()
                                Text("John / Jane")
                            }
                        }
//                    MARK: - SECTION 3
                
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
