//
//  BookmarkButton.swift
//  clicker
//
//  Created by Axel Kaliff on 2020-07-29.
//  Copyright © 2020 Axel Kaliff. All rights reserved.
//

import SwiftUI

struct BookmarkButton: View {
    
    var isFavourite: Bool
    var iconConfiguration: UIImage.Configuration
    
    var body: some View {
        
        Button(action: {
            
        }) {
            if isFavourite {
            Image(uiImage: UIImage(systemName: "bookmark.fill", withConfiguration: iconConfiguration)!)
            } else  {
                Image(uiImage: UIImage(systemName: "bookmark", withConfiguration: iconConfiguration)!)
            }
        }
        .foregroundColor(.white)
        
        
        
    }
}

struct BookmarkButton_Previews: PreviewProvider {
    
    static var previews: some View {
        let iconConfiguration = UIImage.SymbolConfiguration(pointSize: 18, weight: .medium, scale: .default)
        BookmarkButton(isFavourite: true, iconConfiguration: iconConfiguration)
    }
}
