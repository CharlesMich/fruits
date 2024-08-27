//
//  OnboardingView.swift
//  Fruits
//
//  Created by Charles Michael on 8/26/24.
//

import SwiftUI

struct OnboardingView: View {
//    MARK: - PROPERTIES
    
    var fruits: [Fruit] = fruitsData
    
//    MARK: - BODY
    var body: some View {
        
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
               
            }
           
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//    MARK: - PREVIEW
#Preview {
    OnboardingView(fruits: fruitsData)
}
