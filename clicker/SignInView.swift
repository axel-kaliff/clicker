//
//  SignInView.swift
//  clicker
//
//  Created by Axel Kaliff on 2020-07-27.
//  Copyright © 2020 Axel Kaliff. All rights reserved.
//

import SwiftUI
import Foundation

struct SignInView: View {
    var body: some View {
        ZStack {
            Color(.black).edgesIgnoringSafeArea(.all)
        
            VStack {
                Image("fulltextIcon")
                
                Text("never stand in queue again")
                    .foregroundColor(.gray)
                    .padding(.all, 10)
            }
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
