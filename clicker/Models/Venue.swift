//
//  Venues.swift
//  clicker
//
//  Created by Axel Kaliff on 2020-04-24.
//  Copyright © 2020 Axel Kaliff. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Venue: Hashable, Codable, Identifiable {
    var id: String
    var name: String
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    var category: Category
    
   var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case bar = "Bar"
        case club = "Club"
        case cafe = "Café"
    }

}

extension Venue {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}

