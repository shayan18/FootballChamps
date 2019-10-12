//
//  Helper.swift
//  FootballCamps
//
//  Created by Shayan Ali on 12/10/2019.
//  Copyright © 2019 Shayan Ali. All rights reserved.
//

import Foundation
import UIKit
class Helper {
    
    static func clubDetails(name: String, country: String, value: String)-> String {
        
        return "The \(name) club from \(country) has a value of \(value) million euros."
    }
}
