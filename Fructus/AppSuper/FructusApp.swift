//
//  FructusApp.swift
//  Fructus
//
//  Created by Yerkebulan Serikov on 19.04.2022.
//

import SwiftUI

@main
struct FructusApp: App {
    // MARK: - Properties
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if(isOnboarding){
                OnboardingView()
            }
            else{
                ContentView()
            }
        }
    }
}
