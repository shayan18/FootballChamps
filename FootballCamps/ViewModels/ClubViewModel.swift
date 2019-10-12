//
//  ClubViewModel.swift
//  FootballCamps
//
//  Created by Shayan Ali on 12/10/2019.
//  Copyright © 2019 Shayan Ali. All rights reserved.
//

import Foundation
import UIKit
struct ClubViewModel {
    
     let name: String
     let logo: String
     let country: String
     let value: String
     let titles: Int

 //Dependency Injection
    init(club: Club) {
        self.name = club.name ?? "N/A"
        self.logo = club.image ?? ""
        self.country = club.country ?? "N/A"
        self.value = "\(club.value ?? 0) Millions"
        self.titles = club.europeanTitles ?? 0

    }
}



