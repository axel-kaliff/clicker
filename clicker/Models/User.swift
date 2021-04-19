//
//  User.swift
//  clicker
//
//  Created by Axel Kaliff on 2021-04-11.
//  Copyright © 2021 Axel Kaliff. All rights reserved.
//

import Foundation

//User(favoriteVenues: ["1", "2"], username: "TesterUser")

struct User {
    var name: String
    var favoriteVenues: [String]
    
    init(username: String  ) {
        name = username
        favoriteVenues = []
    }
}
