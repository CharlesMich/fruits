//
//  FruitNutrientsView.swift
//  Fruits
//
//  Created by Charles Michael on 9/2/24.
//

import SwiftUI

struct FruitNutrientsView: View {
//    MARK: - PROPERTIES
    var fruit: Fruit
    let nutrients: [String] = ["energy", "Sugar", "Fat", "Protien", "Vitamins", "Minarels"]
//    MARK: - BODY
    
    
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutriental Value per 100g"){
                ForEach(0..<nutrients.count, id:\.self)
                { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
           
        }
    }
}

#Preview {
FruitNutrientsView(fruit: fruitsData[0])
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        .previewLayout(.fixed(width: 375, height: 488))
}
