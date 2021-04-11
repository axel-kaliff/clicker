//
//  HomeView.swift
//  clicker
//
//  Created by Axel Kaliff on 2020-07-16.
//  Copyright © 2020 Axel Kaliff. All rights reserved.
//

import SwiftUI

@available(iOS 14.0, *)
struct HomeView: View {
    @State private var showingSettings = false
    
    var iconConfiguration = UIImage.SymbolConfiguration(pointSize: 19, weight: .bold, scale: .large)
    
    var settingsButton: some View {
        Button(action: {
            showingSettings.toggle()
        }) {
            Image(uiImage: UIImage(systemName: "gear", withConfiguration: iconConfiguration)!)
        }.foregroundColor(.white)
    }

    
    var body: some View {
        
        NavigationView {
            ScrollView(.vertical, showsIndicators: false, content: {
            LazyVStack {
                
                
                
                VenueRowBig(rowHeader: "Favourites", items: [venueData[0], venueData[1]])
                    
                    .listRowInsets(EdgeInsets())
                    .listRowBackground(Color.black)
                
                VenueRowBig(rowHeader: "Recommended", items: [venueData[0], venueData[1]])
                    .listRowInsets(EdgeInsets())
                    .listRowBackground(Color.black)
                
                VenueRowSmall(rowHeader: "Available Space", items: [venueData[0], venueData[1], venueData[2], venueData[3], venueData[4]])
                    .listRowInsets(EdgeInsets())
                    .listRowBackground(Color.black)
                 
            }
            .environment(\.defaultMinListRowHeight, 320)
            .colorScheme(.dark)
            .navigationBarTitle("Home", displayMode: .large)
            .navigationBarItems(trailing:
                                    NavigationLink(destination: SettingsView()) {
                                    settingsButton
                                    }
            )
                
            })
            .sheet(isPresented: $showingSettings) {
                SettingsView()
            }
           
        }.colorScheme(.dark)
        
}
}

@available(iOS 14.0, *)
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ForEach(["iPhone X"], id: \.self) { deviceName in
                HomeView()
                    .previewDevice(PreviewDevice(rawValue: deviceName))
                    .previewDisplayName(deviceName)
            }
            
        }
    }
}
