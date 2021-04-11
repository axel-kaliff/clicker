//
//  VenueRowBigItem.swift
//  clicker
//
//  Created by Axel Kaliff on 2020-07-10.
//  Copyright © 2020 Axel Kaliff. All rights reserved.
//

import SwiftUI

struct VenueRowBigItem: View {
    var venue: Venue
    var body: some View {
        
        
        
        VStack(alignment: .leading) {
            Image(venue.image!)
                .renderingMode(.original)
                .resizable()
                .frame(width: 255, height: 255)
                .cornerRadius(20)
                .overlay(TextOverImage(radius: 20, name: venue.name!), alignment: .topLeading)

        }
        .padding(.leading, 15)
    
        
    }
}


struct TextOverImage: View {
    var radius: CGFloat
    var name: String
    var body: some View {
        VStack(alignment: .leading) {
            Text(name)
                .font(.headline)
                .padding(16)
                .foregroundColor(.primary)
            
            
            Spacer()
            
            Text("Grottan - 0.7 km")
                .font(.callout)
                .padding(10)
                .foregroundColor(.primary)
            
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
        .background(Color.black.opacity(0.3))
        .opacity(1)
        .cornerRadius(radius)
        .padding(0)
        
    }
}


struct VenueRowBigItem_Previews: PreviewProvider {
    static var previews: some View {
        VenueRowBigItem(venue: venueData[0])
    }
}

