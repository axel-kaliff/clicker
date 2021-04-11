//
//  SearchView.swift
//  clicker
//
//  Created by Axel Kaliff on 2020-07-13.
//  Copyright © 2020 Axel Kaliff. All rights reserved.
//

import SwiftUI

struct SearchView: View {
    @State private var name: String = ""
    @State private var min = 35
    @State private var max = 60
    @State private var age = 20
    @State private var beer = 50
    @State private var cider = 50
    @State var isBeerPong: Bool = false
    @State var isDanceFloor: Bool = false
    @State var showAdvanced: Bool = false
    @State private var keyboardOffset: CGFloat = 0
    
    var iconConfiguration = UIImage.SymbolConfiguration(pointSize: 19, weight: .bold, scale: .large)
    
    var body: some View {
        
        VStack {
            
            NavigationView {
                Form {
                    
                    HStack {
                    TextField("Venue Name", text: $name).textFieldStyle(RoundedBorderTextFieldStyle())
                        .foregroundColor(.white)
                        .padding(.top, 10)
                        .padding(.bottom, 10)
                    
                    Button(action: {
                        
//                        GOTO discover with filter parameters
                            
                    }) {
                        Image(uiImage: UIImage(systemName: "arrowtriangle.right.circle.fill", withConfiguration: iconConfiguration)!)
                    }.foregroundColor(uistandard.color)
                }
                    
                    
                    Toggle(isOn: $showAdvanced) {
                        Text("Show Advanced Filter")
                    }
                    .padding(.top, 20)
                    .toggleStyle(SwitchToggleStyle(tint: uistandard.color))
                    
                    
                    if showAdvanced {
                        Section(header: Text("ADVANCED FILTER")) {
                            
                            Stepper(value: $min,
                                    in: 15...200,
                                    label: {
                                        Text("Min # of people: \(self.min)")
                                    })
                            
                            Stepper(value: $max,
                                    in: 15...200,
                                    label: {
                                        Text("Max # of people: \(self.max)")
                                    })
                            
                            Stepper(value: $age,
                                    in: 18...25,
                                    label: {
                                        Text("Age Limit: \(self.age)")
                                    })
                            
                            
                            Stepper(value: $beer,
                                    in: 20...70,
                                    label: {
                                        Text("Max 💸 cheapest beer: \(self.beer)")
                                    })
                            
                            
                            Stepper(value: $cider,
                                    in: 18...100,
                                    label: {
                                        Text("Max 💸 of cheapest cider: \(self.cider)")
                                    })
                            
                            //                        TextField("Username", text: )
                            Toggle(isOn: $isBeerPong) {
                                Text("Dance Floor")
                            }
                            
                            Toggle(isOn: $isDanceFloor) {
                                Text("Beer Pong")
                            }
                            
                        }
                        
                       
                        
                    }
                    
                
                    
                    
                    
                }
                .toggleStyle(SwitchToggleStyle(tint: uistandard.color))
                .colorScheme(.dark)
                .navigationBarTitle("Search")
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
        }.background(Color.black)
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
