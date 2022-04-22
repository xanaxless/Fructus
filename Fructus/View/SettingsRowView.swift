//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Yerkebulan Serikov on 22.04.2022.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - Property
    var name: String
    var content: String? = nil
    var linkLabel : String? = nil
    var linkDestination : String? = nil
    
    // MARK: - Body
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack{
                Text(name).foregroundColor(.gray)
                Spacer()
                if let safecontent = content {
                    Text(safecontent)
                }else if let safeLinkLabel = linkLabel, let safeLinkDestination = linkDestination{
                    Link(safeLinkLabel, destination: URL(string: "https://\(safeLinkDestination)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.teal)
                }
            }
        }
    }
}

// MARK: - Preview
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "@xanaxless")
            .previewLayout(.fixed(width: 375, height:60))
            .padding()
        SettingsRowView(name: "Developer", linkLabel: "SwiftUI", linkDestination: "wikipedia.com")
            .previewLayout(.fixed(width: 375, height:60))
            .padding()
    }
}
