//
//  DetailRow.swift
//  clicker
//
//  Created by Axel Kaliff on 2020-07-16.
//  Copyright © 2020 Axel Kaliff. All rights reserved.
//

import SwiftUI

struct DetailRow: View {
    var title: String
    var bodyImage: Image?
    var bodyText: String?
    
    var body: some View {
        
        
        
        VStack(alignment: .leading) {
            
            Text(self.title)
                .font(.system(.title))
                .padding(.top,5)
                .padding(.bottom, 10)
                .foregroundColor(.white)
               
            
            if let caption = bodyText {
                
                Text(caption)
                    .frame(maxWidth: .infinity)
                    .padding(.all, 20)
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
                    .background(Color(UIColor(red: 0.15, green: 0.14, blue: 0.14, alpha: 1.00)))
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            if let image = bodyImage {
                image
            }
            
        }
        .frame(maxWidth: .infinity)
        .padding(.all, 20)
        
       
        
       
        
        
    }
}

struct DetailRow_Previews: PreviewProvider {
    static var previews: some View {
        DetailRow(title: "placeholder", bodyText: "lorem ipsum dolor sit amet blablablabalbalbl")
    }
}
