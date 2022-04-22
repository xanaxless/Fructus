//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Yerkebulan Serikov on 22.04.2022.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK: - Property
    var labelText: String
    var labelImage: String
    
    // MARK: - Body
    var body: some View {
        HStack(){
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
            
        }
    }
}

// MARK: - Preview
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
