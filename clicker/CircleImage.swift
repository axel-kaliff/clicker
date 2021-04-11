//
//  SwiftUIView.swift
//  clicker
//
//  Created by Axel Kaliff on 2020-04-24.
//  Copyright © 2020 Axel Kaliff. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    
    var image: Image
    
    var body: some View {
        image
        .resizable()
        .frame( height: 250)
        .clipShape(Circle())
        .overlay(
            Circle().stroke(Color.white, lineWidth: 4)
            .shadow(radius: 5)
        )
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("tux"))
    }
}
