//
//  FruitModel.swift
//  Fructus
//
//  Created by Yerkebulan Serikov on 20.04.2022.
//

import SwiftUI

// MARK: - Fruit Data Model

struct Fruit: Identifiable{
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
