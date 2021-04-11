//
//  AlertSheet.swift
//  clicker
//
//  Created by Axel Kaliff on 2020-07-29.
//  Copyright © 2020 Axel Kaliff. All rights reserved.
//

import SwiftUI

struct AlertSheet: View {
    @State var alwaysAlert = false
    @State var guestAmountAlert = false
    @State var spaceAmountAlert = false
    @State var numberOfPeople = 32
    @State var numberOfSpaces = 15
    @State private var keyboardOffset: CGFloat = 0
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {
            Color(.black)
                .padding(.all, 0)
            
            NavigationView {
               VStack {
                    

                    Text("When the venue has")
                        .font(.system(.title))
                        .padding(.bottom, 0)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                
                VStack {
                    HStack {
                        Text("\(self.numberOfPeople) guests")
                        
                        Stepper(value: $numberOfPeople,
                                in: 1...200,
                                label: {
                                   // Text("When \(self.numberOfPeople) persons are there")
                                })
                        
                        Toggle(isOn: $guestAmountAlert, label: {
                            
                        })
                    }.padding()
                    
                    Text("Alert me when this venue has a certain amount of guests")
                        .font(.system(.caption))
                        .padding(.all, 10)
                        .foregroundColor(Color(UIColor(red: 0.53, green: 0.52, blue: 0.52, alpha: 1.00)))
                        
                    Divider()
                    
                    HStack {
                        Text("\(self.numberOfSpaces) spaces")
                        
                        Stepper(value: $numberOfSpaces,
                                in: 1...200,
                                label: {
                                    //Text("When \(self.numberOfSpaces) persons are there")
                                })
                        
                        Toggle(isOn: $spaceAmountAlert, label: {
                            
                        })
                    }
                    
                    .padding()
                   // .padding(.top, 50)
                    
                    Text("Alert me when this venue has a certain amount of available spaces")
                        .font(.system(.caption))
                        .padding(.all, 10)
                        .foregroundColor(Color(UIColor(red: 0.53, green: 0.52, blue: 0.52, alpha: 1.00)))
                    
                    
                }
                .background(Color(UIColor(red: 0.10, green: 0.09, blue: 0.09, alpha: 1.00)))
                    
                }
               .frame(alignment: .topLeading)
                .toggleStyle(SwitchToggleStyle(tint: uistandard.color))
                .colorScheme(.dark)
                .navigationBarTitle("Set Alert", displayMode: .large)
                .navigationBarItems(trailing:
                                        Button(action: {
                                          
                                                self.mode.wrappedValue.dismiss()
                                            
                                        }, label: {
                                            
                                            Text("Done").foregroundColor(uistandard.color)
                                                
                                        })
                )
                .accentColor(uistandard.color)
                .offset(y: -self.keyboardOffset)
                .onAppear {
                    NotificationCenter.default.addObserver(forName: UIResponder.keyboardDidShowNotification,
                                                           object: nil,
                                                           queue: .main) { (notification) in
                        NotificationCenter.default.addObserver(
                            forName: UIResponder.keyboardDidShowNotification,
                            object: nil,
                            queue: .main) { (notification) in
                            guard let userInfo = notification.userInfo,
                                  let keyboardRect = userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
                            
                            self.keyboardOffset = keyboardRect.height
                        }
                                                            
                                                            NotificationCenter.default.addObserver(
                                                                forName: UIResponder.keyboardDidHideNotification,
                                                                object: nil,
                                                                queue: .main) { (notification) in
                                                                self.keyboardOffset = 0
                                                            }
                                                           }
                }
            }
            .padding(.all, 0)
            .background(Color.black)
        }.colorScheme(.dark)
        .frame(alignment: .topLeading)
}
}

struct AlertSheet_Previews: PreviewProvider {
    static var previews: some View {
        AlertSheet()
    }
}
