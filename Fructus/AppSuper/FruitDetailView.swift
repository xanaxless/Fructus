//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Yerkebulan Serikov on 20.04.2022.
//

import SwiftUI

struct FruitDetailView: View {
    // MARK: - Property
    
    var fruit: Fruit
    // MARK: - Body
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment:.center, spacing: 20){
                    // HEADER
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20) {
                        // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // NUTIENTS
                        FruitNutrientsView(fruit: fruit)
                        
                        
                        // SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                            
                        //LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }//:VStack
                        .padding()
                        .frame(maxWidth: 640, alignment: .center)
                }//: VStack
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
                
            }//: ScrollView
            .edgesIgnoringSafeArea(.top)
        }//: NavigationView
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

// MARK: - Preview
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
