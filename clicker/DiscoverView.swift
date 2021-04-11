//
//  mainView.swift
//  clicker
//
//  Created by Axel Kaliff on 2020-04-25.
//  Copyright © 2020 Axel Kaliff. All rights reserved.
//

import SwiftUI


@available(iOS 14.0, *)
struct DiscoverView: View {
    
    var rightNow = [Venue]()
    @FetchRequest(
        entity: Venue.entity(),
        sortDescriptors: [
            NSSortDescriptor(keyPath: \Venue.name, ascending: true)
        ]
        //predicate: NSPredicate(format: "genre contains 'Action'")
    ) var venues: FetchedResults<Venue>
    
    @Environment(\.managedObjectContext) var managedObjectContext
    
    @State var showingSearch = false
   
    var iconConfiguration = UIImage.SymbolConfiguration(pointSize: 19, weight: .bold, scale: .large)

    
    var searchButton: some View {
        Button(action: {
                self.showingSearch.toggle()
            
        }) {
            Image(uiImage: UIImage(systemName: "magnifyingglass", withConfiguration: iconConfiguration)!)
        }.foregroundColor(.white)
    }
    
    
    var body: some View {
        
       
            
        NavigationView {
            
            ScrollView(.vertical, showsIndicators: false, content: {
                
           
            
            LazyVStack {
                
                VenueRowBig(rowHeader: "Right Now", items: [venueData[0], venueData[1]])
                    
                    .listRowInsets(EdgeInsets())
                    .listRowBackground(Color.black)
                
                VenueRowBig(rowHeader: "Upcoming", items: [venueData[0], venueData[1]])
                    .listRowInsets(EdgeInsets())
                    .listRowBackground(Color.black)
                
                VenueRowSmall(rowHeader: "Right Now", items: [venueData[0], venueData[1], venueData[2], venueData[3], venueData[4]])
                    .listRowInsets(EdgeInsets())
                    .listRowBackground(Color.black)
                 
            }
            .background(Color.black)
            .environment(\.defaultMinListRowHeight, 320)
            .colorScheme(.dark)
            .navigationBarTitle("Discover", displayMode: .large)
            .navigationBarItems(trailing: searchButton)
            .sheet(isPresented: $showingSearch) {
                SearchView()
            }
            
            
            })
        
        }.colorScheme(.dark)
        .background(Color.black)
        
}
    
    func saveContex() {
        do {
            try managedObjectContext.save()
        } catch {
            print("Error saving managed object context: \(error)")
        }
    }
    
    
}


@available(iOS 14.0, *)
struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ForEach(["iPhone X"], id: \.self) { deviceName in
                DiscoverView()
                    .previewDevice(PreviewDevice(rawValue: deviceName))
                    .previewDisplayName(deviceName)
            }
            
        }
        
    }
}

