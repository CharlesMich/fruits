//
//  FruitDetailView.swift
//  Fruits
//
//  Created by Charles Michael on 8/29/24.
//

import SwiftUI

struct FruitDetailView: View {
//    MARK: - PROPERTIES
    
    var fruit: Fruit
    
//    MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment:.center, spacing: 20){
//                    HEADER
                    VStack(alignment: .leading, spacing: 20) {
                        
//                        TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
//                        HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
//                        NUTRIENTS
                        
//                        SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
//                        DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
//                        LINK
                           
                    }// : VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } // : SCROLL
            } // : NAVIGATION
        }
    }
}

#Preview {
    FruitDetailView(fruit: fruitsData[0])
}
