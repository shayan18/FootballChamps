//
//  APIResult.swift
//  FootballCamps
//
//  Created by Shayan Ali on 12/10/2019.
//  Copyright © 2019 Shayan Ali. All rights reserved.
//

import Foundation

enum APIResult<T> {
    case success(T)
    case failure(String)
}
