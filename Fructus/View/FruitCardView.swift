//
//  FruitCardView.swift
//  Fructus
//
//  Created by Yerkebulan Serikov on 19.04.2022.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: - PROPERTIES
    var friut: Fruit
    
    @State private var isAnimating : Bool = false
    
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            VStack(spacing: 20){
                // FRUIT: IMAGE
                Image(friut.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color.black.opacity(0.15), radius: 8, x: 6, y:8 )
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                // FRUIT: TITLE
                Text(friut.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color.black.opacity(0.15), radius: 2 ,x: 2, y:2)
                // FRUIT: HEADLINE
                Text(friut.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                // FRUIT: START
                StartButtonView()
            }//:   VSTACK
        }//:   ZSTACK
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5)){
                isAnimating = true
            }
        })
        .frame(minWidth: 0,maxWidth: .infinity, minHeight: 0,  maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: friut.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
        
        
    }
}

 // MARK: -  PREVIEW
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(friut: fruitsData[1])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
