//
//  ChangeUsername.swift
//  clicker
//
//  Created by Axel Kaliff on 2020-07-28.
//  Copyright © 2020 Axel Kaliff. All rights reserved.
//

import SwiftUI

struct ChangeUsername: View {
    @State var isScreen1Active: Bool = false
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    private var testP = "tester"
    @State private var oldUsername: String = ""
    @State private var newUsername: String = ""

    
    var body: some View {
        
            
            
           
            Form {
                    HStack {
                        
                        Text("Current Username").foregroundColor(.white)
                            .frame(width: UIScreen.main.bounds.width * 0.4, height: 30, alignment: .leading)
                        
                SecureField("", text: $oldUsername)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.top, 0)
                    .padding(.bottom, 0)
                }
                
                    
                
           
                HStack {
                    
                    Text("New Username").foregroundColor(.white)
                        .foregroundColor(.white)
                            .frame(width: UIScreen.main.bounds.width * 0.4, height: 30, alignment: .leading)
                    
                SecureField("", text: $newUsername)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.top, 0)
                    .padding(.bottom, 0)
                    
                    
                }
            }
            .navigationBarTitle("Change Username", displayMode: .inline)
            .navigationBarItems(trailing:
                                    Button(action: {
                                        if oldUsername != "" && newUsername != "" {
//                                            self.isScreen1Active.toggle()
                                            self.mode.wrappedValue.dismiss()
                                        }
                                    }, label: {
                                        
                                        Text("Done").foregroundColor(uistandard.color)
                                            
                                    })
            )
            
            
            
            .colorScheme(.dark)
                
        
        
        if isScreen1Active {
                            NavigationLink(destination: SettingsView(), isActive: $isScreen1Active) {
                                Text("Screen 1")
                                .bold()
                            }
                        }
        
        
    }
}

struct ChangeUsername_Previews: PreviewProvider {
    static var previews: some View {
        ChangeUsername()
    }
}
