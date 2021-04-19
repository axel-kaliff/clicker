//
//  SettingsView.swift
//  clicker
//
//  Created by Axel Kaliff on 2020-07-24.
//  Copyright © 2020 Axel Kaliff. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    @State private var email: String = "your@email.com"
    @State private var password: String = ""
    @State var showingChangePassword = false
    @State private var action: Int? = 0
    var placeHolderUser = User(username: "Steve")
    
    var body: some View {
       
        
    
       NavigationView {
           
            VStack {
            
                List {
                
                HStack {
                    
                    
                    NavigationLink(destination:
                                    ChangeUsername()
                    ) {
                        
                        Text("Username")
                            .padding(.trailing, 0)
                            
                            Spacer()
                        Text("Yoursername").padding(.all, 0)
                            
                            .foregroundColor(.gray)
                    }

                    
                }
                
                    HStack {
                        
                        
                        NavigationLink(destination: ChangePasswordView()) {
                            
                            Text("Password")
                                .padding(.trailing, 0)
                                
                                Spacer()
                            Text("Passw").padding(.all, 0)
                                
                                .foregroundColor(.gray)
                        }

                        
                    }
                    
                    
                } // List
                .padding(.all, 10)
                
                
                
                
                
                
                Spacer()
               
                Button(action: {
                    
                }) {
                    Text("Delete Account")
                        .foregroundColor(Color.red)
                        
                }
                
                
            }
            .navigationBarTitle("Settings", displayMode: .inline)
        }
            .colorScheme(.dark)
            .toggleStyle(SwitchToggleStyle(tint: uistandard.color))
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsView()
            SettingsView()
        }
    }
}
