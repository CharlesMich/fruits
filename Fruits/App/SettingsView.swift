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
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
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
                        label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                        ){
                            Divider().padding(.vertical, 4)
                            Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen.")
                                .padding(.vertical, 8)
                                .frame(minHeight: 68)
                                .layoutPriority(1)
                                .font(.footnote)
                                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            
                            Toggle(isOn: $isOnboarding) {
                                if isOnboarding {
                                    Text("Restarted".uppercased())
                                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                        .foregroundColor(Color.green)
                                } else {
                                    Text("Restart".uppercased())
                                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                        .foregroundColor(Color.secondary)
                                }
                            }
                            .padding()
                            .background(
                                Color(UIColor.tertiarySystemBackground)
                                    .clipShape(RoundedRectangle(cornerRadius: 8, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
                            )
                        }
                    
//                     MARK: - SECTION 3
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone") 
                        ){
                           
                            SettingsRowView(name: "Developer", content: "John / Jane")
                            SettingsRowView(name: "designer", content: "Robert Petras")
                           
                            SettingsRowView(name: "Compatibility", content: "IOS 14")
                            SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "Swiftuimasterclass.com")
                            SettingsRowView(name: "Twitter", linkLabel: "SwiftUI Masterclass", linkDestination: "twitter.com/robertpetras")
                            SettingsRowView(name: "Version", content: "2.0")
                            SettingsRowView(name: "SwiftUI", content: "1.1.0")
                            
                        }
//
                    
                    
                
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
