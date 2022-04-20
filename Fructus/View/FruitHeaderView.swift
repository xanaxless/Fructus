//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Yerkebulan Serikov on 20.04.2022.
//

import SwiftUI

struct FruitHeaderView: View {
    // MARK: - Property
    
    var fruit: Fruit
    
    // MARK: - Body
    var body: some View {
        ZStack(){
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            
        }//: ZStack
        .frame(height:480)
    }
    
    
    
}

// MARK: - PreView
struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
