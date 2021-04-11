//
//  MapLinkButton.swift
//  clicker
//
//  Created by Axel Kaliff on 2020-07-29.
//  Copyright © 2020 Axel Kaliff. All rights reserved.
//

import SwiftUI

struct MapLinkButton: View {
    var url: String
    var body: some View {
        Button(action: {
            
            if let url = URL(string: url) {
                UIApplication.shared.open(url)
            }
            
        }) {
            Text("Show me the way!")
                .cornerRadius(5)
                .foregroundColor(Color.white)
                .padding()
                .frame(maxWidth: UIScreen.main.bounds.width * 0.7)
                .background(uistandard.color)
                .padding()
                
                
        }.padding(.bottom, 10)

    }
}

struct MapLinkButton_Previews: PreviewProvider {
    static var previews: some View {
        MapLinkButton(url: "http://maps.apple.com/?address=17,sveavagen,stockholm")
    }
}
