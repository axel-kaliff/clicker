//
//  VenueRow.swift
//  clicker
//
//  Created by Axel Kaliff on 2020-04-24.
//  Copyright © 2020 Axel Kaliff. All rights reserved.
//

import SwiftUI

struct VenueRow: View {
    
    
    var venue: Venue
    
    var body: some View {
        
        HStack {
            venue.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(venue.name)
            Spacer()
        }
        .listRowBackground(Color.black)
        
        
        
    }
}

struct VenueRow_Previews: PreviewProvider {
    static var previews: some View {
        
        Group
            {
                VenueRow(venue: venueData[0])
                VenueRow(venue: venueData[1])
        }
    .previewLayout(.fixed(width: 300, height: 70))
    }
}
