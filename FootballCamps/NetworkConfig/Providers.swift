//
//  Providers.swift
//  FootballCamps
//
//  Created by Shayan Ali on 12/10/2019.
//  Copyright © 2019 Shayan Ali. All rights reserved.
//

import Foundation
import Moya

struct Providers {
    static let clubProvider = MoyaProvider<ClubService>(manager: RequestManager.manager())
}
