//
//  SwiftUIView.swift
//  clicker
//
//  Created by Axel Kaliff on 2020-04-25.
//  Copyright © 2020 Axel Kaliff. All rights reserved.
//

import SwiftUI

struct VenueList: View {
    var body: some View {
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

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone X"], id: \.self) { deviceName in
            VenueList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
