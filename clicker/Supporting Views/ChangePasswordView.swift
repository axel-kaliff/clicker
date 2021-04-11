//
//  ChangePasswordView.swift
//  clicker
//
//  Created by Axel Kaliff on 2020-07-26.
//  Copyright © 2020 Axel Kaliff. All rights reserved.
//

import SwiftUI

struct ChangePasswordView: View {
    @State var isScreen1Active: Bool = false
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    private var testP = "tester"
    @State private var oldPassword: String = ""
    @State private var newPassword: String = ""
    
    var doneButton = Button("Done") {
        
    }
    
    
    
    var body: some View {
        
            
            
           
            Form {
                    HStack {
                        
                        Text("Current password").foregroundColor(.white)
                            .frame(width: UIScreen.main.bounds.width * 0.4, height: 30, alignment: .leading)
                        
                SecureField("", text: $oldPassword)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.top, 0)
                    .padding(.bottom, 0)
                }
                
                    
                
           
                HStack {
                    
                    Text("New password").foregroundColor(.white)
                        .foregroundColor(.white)
                            .frame(width: UIScreen.main.bounds.width * 0.4, height: 30, alignment: .leading)
                    
                SecureField("", text: $newPassword)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.top, 0)
                    .padding(.bottom, 0)
                    
                    
                }
            }
            .navigationBarTitle("Change Password", displayMode: .inline)
            .navigationBarItems(trailing:
                                    Button(action: {
                                        if oldPassword != "" && newPassword != "" {
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

struct ChangePasswordView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ForEach(["iPhone X"], id: \.self) { deviceName in
                ChangePasswordView()
                    .previewDevice(PreviewDevice(rawValue: deviceName))
                    .previewDisplayName(deviceName)
            }
            
        }
    }
}
