//
//  ContentView.swift
//  clicker
//
//  Created by Axel Kaliff on 2020-04-24.
//  Copyright © 2020 Axel Kaliff. All rights reserved.
//

import SwiftUI

struct VenueDetail: View {
    
    @State var showingAlert = false
    //var placeHolderUser = User(favoriteVenues: ["1001", "1003"], username: "TesterUser")
    var venue: Venue
    var bookmarkIcon = "bookmark"
    var iconConfiguration = UIImage.SymbolConfiguration(pointSize: 18, weight: .medium, scale: .default)
    var placeHolderUser: User
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            
            
            ScrollView(.vertical, showsIndicators: false) {
                
                DetailImage(venue: venue)
                
                //            CAPTION
                Text("Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.")
                    .foregroundColor(.white)
                    .padding(.all, 20)
                
                MapLinkButton(url: "http://maps.apple.com/?address=17,sveavagen,stockholm")
                
                GuestAmountRow(currentAmount: 10, maxAmount: 25)
                
                DetailRow(title: "About", bodyImage: .none, bodyText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                
            }
            .sheet(isPresented: $showingAlert) {
                AlertSheet()
            }
            .navigationBarTitle(Text(venue.name), displayMode: .inline)
            .navigationBarItems(trailing:
                                    HStack {
                                        
                                        
                                        Button(action: {
                                            showingAlert.toggle()
                                        }) {
                                            Image(uiImage: UIImage(systemName: "bell", withConfiguration: iconConfiguration)!)
                                        }.foregroundColor(.white)
                                        .padding(.trailing, 15)
                                        
                                        
                                        BookmarkButton(isFavourite:
                                                        
                                                        placeHolderUser.favoriteVenues.contains(venue.id), iconConfiguration: iconConfiguration)
                                        
                                        
                                    }
            )
//            .edgesIgnoringSafeArea(.top)
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VenueDetail(venue: venueData[0])
            .previewDevice("iPhone X")
    }
}
