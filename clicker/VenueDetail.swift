//
//  ContentView.swift
//  clicker
//
//  Created by Axel Kaliff on 2020-04-24.
//  Copyright © 2020 Axel Kaliff. All rights reserved.
//

import SwiftUI

struct VenueDetail: View {
    
    var venue: Venue
    
    var body: some View {
        VStack {
            
            
            //mapView(coordinate: venue.locationCoordinate)
              //  .edgesIgnoringSafeArea(.top)
                //.frame(height: 300)
                //.offset(y: -10)
                
                
            
            
            CircleImage(image: venue.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            
            VStack(alignment: .leading) {
                Text(venue.name)
                    .font(.title)
                    .foregroundColor(.red)
                    .underline()
                HStack {
                    Text("some information")
                        .font(.subheadline)
                    Spacer()
                    Text("Codys showdy")
                        .font(.subheadline)
                }
            
            }
        .padding()

             //VenueList()
       
           
            
        }
        .navigationBarTitle(Text(venue.name), displayMode: .inline)
        .edgesIgnoringSafeArea(.top)
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VenueDetail(venue: venueData[0])
            .previewDevice("iPhone X")
    }
}
