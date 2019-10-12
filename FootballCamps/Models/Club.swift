//
//  Club.swift
//  FootballCamps
//
//  Created by Shayan Ali on 12/10/2019.
//  Copyright © 2019 Shayan Ali. All rights reserved.
//

import Foundation

// MARK: - Club
struct Club: Codable {
    let name, country: String?
    let value: Int?
    let image: String?
    let europeanTitles: Int?
    
    enum CodingKeys: String, CodingKey {
        case name, country, value, image
        case europeanTitles = "european_titles"
    }
}
