//
//  ContentView.swift
//  Fructus
//
//  Created by Yerkebulan Serikov on 19.04.2022.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Property
    @State private var isShowingSettings: Bool = false
    
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
            }
            .navigationTitle("Friuts")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing){
                    Button {
                        isShowingSettings = true
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    }

                }
            }//: Toolbar
            .sheet(isPresented: $isShowingSettings){
                SettingsView()
            }
            
        }//: Navigation
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
        
    }
}
