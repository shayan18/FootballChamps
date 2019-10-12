//
//  ClubService.swift
//  FootballCamps
//
//  Created by Shayan Ali on 12/10/2019.
//  Copyright © 2019 Shayan Ali. All rights reserved.
//

import Moya
enum ClubService {
    
    case getClub
}

extension ClubService: TargetType {
    
    var baseURL: URL {
        return URL(string: Constants.baseUrl)!
    }
    
    var path: String {
        switch self {
        case .getClub:
            return "hiring/clubs.json"
       
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .getClub:
            return .get
    
        }
    }
    
    var task: Task {
        switch self {
        case .getClub:
            return .requestPlain
            
        }
    }
    
    var headers: [String: String]? {
        
        return [:]
    }
    
    var sampleData: Data {
        return Data()
    }
}
