//
//  ContentView.swift
//  Fructus
//
//  Created by Yerkebulan Serikov on 19.04.2022.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Property
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - Body
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled())  { item in
                    NavigationLink {
                        FruitDetailView(fruit: item)
                    } label: {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
                .navigationTitle("Friuts")
            }
        }//: Navigation
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
        
    }
}
