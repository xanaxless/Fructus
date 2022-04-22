//
//  SettingsView.swift
//  Fructus
//
//  Created by Yerkebulan Serikov on 22.04.2022.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - Properties
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnBoarding: Bool = false
    // MARK: - Body
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20){
                    // MARK: - Section 1
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ){
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing:10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and callories. Hone have cholesterol. Fruits are sources of many essential nutrients, including potacium, dietary fiber, vitamins and much more.")
                                .font(.footnote)
                        }
                    }
                    // MARK: - Section 2
                    GroupBox(label: SettingsLabelView(labelText: "Customization", labelImage: "paint")
                    ){
                        Divider().padding(.vertical , 4)
                        Text("If you wish you can restart the application by toggle the switch in this box")
                            .padding(.vertical, 8)
                            .frame(minHeight:60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnBoarding) {
                            if isOnBoarding{
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            }else{
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                        
                    }
                    // MARK: - Section 3
                    
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone"))
                    {
                        
                        SettingsRowView(name: "Developer", content: "@xanaxless")
                        SettingsRowView(name: "Desingner", content: "Picaso")
                        SettingsRowView(name: "Compatibility" , content: "IOS14")
                        SettingsRowView(name: "Sources", linkLabel: "Wikipedia", linkDestination: "wikipedia.com")
                        SettingsRowView(name: "Website", linkLabel: "Udemy", linkDestination: "udemy.com")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    }
                    
                }//:VStack
                
                .navigationBarTitle("Settings", displayMode: .large)
                .toolbar(content: {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            presentationMode.wrappedValue.dismiss()
                        } label: {
                            Image(systemName: "xmark")
                        }

                    }
                })
                .padding()
            }//: ScrollView
        }//: Navigation
    }
}

// MARK: - Preview
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
