//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Yerkebulan Serikov on 20.04.2022.
//

import SwiftUI

struct FruitHeaderView: View {
    // MARK: - Property
    @State private var isAnimating: Bool = false
    var fruit: Fruit
    
    // MARK: - Body
    var body: some View {
        ZStack(){
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color.black.opacity(0.15), radius: 8, x: 6, y: 8)
                .padding()
                .scaleEffect(isAnimating ? 1 : 0.5)
        }//: ZStack
        .frame(height:480)
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
    }
    
    
    
}

// MARK: - PreView
struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
