//
//  UIStandards.swift
//  clicker
//
//  Created by Axel Kaliff on 2020-07-26.
//  Copyright © 2020 Axel Kaliff. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

let uistandard = UIStandard(color: .purple)

struct UIStandard {
    var color: Color = Color(UIColor(red: 0.74, green: 0.55, blue: 0.95, alpha: 1.00))
    
    
    
    init(color: Color) {
        self.color = color
    }
}
