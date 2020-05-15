//
//  mainView.swift
//  clicker
//
//  Created by Axel Kaliff on 2020-04-25.
//  Copyright © 2020 Axel Kaliff. All rights reserved.
//

import SwiftUI

struct mainView: View {
    var venue: Venue
    var body: some View {
        
        VStack {
            
        mapView(coordinate: venue.locationCoordinate)
          .edgesIgnoringSafeArea(.top)
          .frame(height: 300)
          .offset(y: 0)
            
        NavigationView {
            List(venueData) { venue in
                NavigationLink(destination: VenueDetail(venue: venue)) {
                    VenueRow(venue: venue)
                }
            }
            .navigationBarTitle(Text("Venues"))
            .environment(\.defaultMinListRowHeight, 100)
        }
        }
        
    }
}

struct mainView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone X"], id: \.self) { deviceName in
            mainView(venue: venueData[0])
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
