//
//  ContentView.swift
//  Fruits
//
//  Created by Charles Michael on 8/26/24.
//

import SwiftUI

struct ContentView: View {
//    MARK: - PROPERTIES
    
    var fruits: [Fruit] = fruitsData
    
//    MARK: - BODY
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                   
                }
                
            }
            .navigationTitle("Fruits")
        }
    }
}

#Preview {
    ContentView()
}
