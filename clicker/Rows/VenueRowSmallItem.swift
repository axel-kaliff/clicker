//
//  VenueRowSmallItem.swift
//  clicker
//
//  Created by Axel Kaliff on 2020-07-11.
//  Copyright © 2020 Axel Kaliff. All rights reserved.
//

import SwiftUI

struct VenueRowSmallItem: View {
        var venue: Venue
    var body: some View {
        
        
        
        VStack(alignment: .leading) {
            venue.image
                .renderingMode(.original)
                .resizable()
                .frame(minWidth: 140, maxWidth: 140, minHeight: 140, maxHeight: 140)
                .cornerRadius(10)
                .overlay(TextOverImage(radius: 10, name: venue.name), alignment: .topLeading)
        }
        .padding(.leading, 15)
    .cornerRadius(10)
        
    }
}


struct VenueRowSmallItem_Previews: PreviewProvider {
    static var previews: some View {
        VenueRowSmallItem(venue: venueData[1])
    }
}
