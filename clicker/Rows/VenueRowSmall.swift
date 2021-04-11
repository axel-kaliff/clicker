//
//  VenueRowSmall.swift
//  clicker
//
//  Created by Axel Kaliff on 2020-07-11.
//  Copyright © 2020 Axel Kaliff. All rights reserved.
//

import SwiftUI

@available(iOS 14.0, *)
struct VenueRowSmall: View {
    var rowHeader: String
    var items: [Venue]
    let rows = [GridItem(.flexible(minimum: 150, maximum: 150)), GridItem(.flexible(minimum: 150, maximum: 150))]
    
    var body: some View {
        
        VStack(alignment: .leading)  {
            
            
            Text(self.rowHeader)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top,5)
            
        ScrollView(.horizontal, showsIndicators: false) { //set .horizontal to scroll horizontally
            LazyHGrid(rows: rows, spacing: 0) { // use HGrid to layout horizontally
                ForEach(self.items, id: \.self) { venue in
                            NavigationLink(
                            destination: VenueDetail(
                                venue: venue
                                )
                            ) {
                                VenueRowSmallItem(venue: venue)
            
                            }
                        }
            }
            
        }
        }
        
        
    }
}


@available(iOS 14.0, *)
struct VenueRowSmall_Previews: PreviewProvider {
    static var previews: some View {
        VenueRowSmall(rowHeader: "Right Now", items: [venueData[0], venueData[1], venueData[2], venueData[3], venueData[4]])
    }
}
