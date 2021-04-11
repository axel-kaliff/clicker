//
//  VenueRowBig.swift
//  clicker
//
//  Created by Axel Kaliff on 2020-07-10.
//  Copyright © 2020 Axel Kaliff. All rights reserved.
//

import SwiftUI

struct VenueRowBig: View {
    
    var rowHeader: String
    var items: [Venue]
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(self.rowHeader)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top,5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(alignment: .top, spacing: 0) {
                    ForEach(self.items) { venue in
                        NavigationLink(
                        destination: VenueDetail(
                            venue: venue
                            )
                        ) {
                            VenueRowBigItem(venue: venue)
                        }
                    }
                }
            }
            
            
        }
    }
    
    
    
    
}

struct VenueRowBig_Previews: PreviewProvider {
    static var previews: some View {
        VenueRowBig(rowHeader: "Right Now", items: [venueData[0], venueData[1], venueData[2]])
    }
}
