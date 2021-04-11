//
//  DetailImage.swift
//  clicker
//
//  Created by Axel Kaliff on 2020-07-29.
//  Copyright © 2020 Axel Kaliff. All rights reserved.
//

import SwiftUI

struct DetailImage: View {
    var venue: Venue
    var body: some View {
        venue.image
            .resizable()
            .scaledToFit()
//            .frame(maxWidth: .infinity)
//            .frame(maxHeight: UIScreen.main.bounds.height * 0.3)
            .frame(alignment: .topLeading)
            .background(Color.red)
//            .padding(.top, 60)
        
    }
}

struct DetailImage_Previews: PreviewProvider {
    static var previews: some View {
        DetailImage(venue: venueData[0])
    }
}
