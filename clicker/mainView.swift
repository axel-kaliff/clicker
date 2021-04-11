//
//  MainView.swift
//  clicker
//
//  Created by Axel Kaliff on 2020-07-13.
//  Copyright © 2020 Axel Kaliff. All rights reserved.
//

import SwiftUI

@available(iOS 14.0, *)
struct MainView: View {
    
    let persistence = PersistenceManager()

    
    var iconConfiguration = UIImage.SymbolConfiguration(pointSize: 21, weight: .bold, scale: .large)
    var body: some View {
        
        
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            TabView {
                
                DiscoverView()
                    .tabItem {
                        Image(uiImage: UIImage(systemName: "eyes", withConfiguration: iconConfiguration)!)
                    }
                
                
                
                HomeView()
                    .tabItem {
                        Image(uiImage: UIImage(systemName: "heart.fill", withConfiguration: iconConfiguration)!)
                    }
                
                
            }
            .colorScheme(.dark)
            .accentColor(uistandard.color)
        }.background(Color.black)
    }
}


@available(iOS 14.0, *)
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ForEach(["iPhone X"], id: \.self) { deviceName in
                MainView()
                    .previewDevice(PreviewDevice(rawValue: deviceName))
                    .previewDisplayName(deviceName)
            }
            
        }
    }
}
