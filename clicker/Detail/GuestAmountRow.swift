//
//  GuestAmountRow.swift
//  clicker
//
//  Created by Axel Kaliff on 2020-07-24.
//  Copyright © 2020 Axel Kaliff. All rights reserved.
//

import SwiftUI

struct GuestAmountRow: View {
    var currentAmount: Int
    var maxAmount: Int
        
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text("Current Guest amount")
                .font(.system(.title))
                .padding(.top,5)
                .padding(.bottom, 10)
                .foregroundColor(.white)
               
            
           
                
            VStack (alignment: .leading) {
                Text("\(self.currentAmount)")
                    .font(.system(size: 45, weight: .bold, design: .default))
                    
                
                Text("\(self.maxAmount - self.currentAmount) Spaces left")
                    .font(.system(size: 24, weight: .bold, design: .default))
                    .foregroundColor(Color(UIColor(red: 0.76, green: 0.78, blue: 0.76, alpha: 1.00)))
                    
            }
            .frame(maxWidth: .infinity)
            .padding(.all, 20)
            .padding(.leading, 10)
            .padding(.trailing, 10)
            .background(Color(UIColor(red: 0.15, green: 0.14, blue: 0.14, alpha: 1.00)))
            .foregroundColor(.white)
            .cornerRadius(10)
            
          
            
        }
        .frame(maxWidth: .infinity)
        .padding(.all, 20)
    }
    
}

struct GuestAmountRow_Previews: PreviewProvider {
    static var previews: some View {
        GuestAmountRow(currentAmount: 10, maxAmount: 25)
    }
}
