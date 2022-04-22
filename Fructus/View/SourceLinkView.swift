//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Yerkebulan Serikov on 20.04.2022.
//

import SwiftUI

struct SourceLinkView: View {
    // MARK: - Properties
    
    
    // MARK: - Body
    var body: some View {
        GroupBox(){
            HStack(){
                Text("Content Source")
                Spacer()
                Link("Wikipedia" , destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}


// MARK: - Preview
struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
