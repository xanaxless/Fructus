//
//  OnboardingView.swift
//  Fructus
//
//  Created by Yerkebulan Serikov on 20.04.2022.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - Property
    
    var fruits : [Fruit] = fruitsData
    // MARK: - Body
    var body: some View {
        TabView{
            ForEach(fruits){ fruit  in
                FruitCardView(friut: fruit)
                
            }//: ForEachLoop
            
        } //: TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
        
    }
}

// MARK: - Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
