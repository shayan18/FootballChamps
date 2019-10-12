//
//  ClubManager.swift
//  FootballCamps
//
//  Created by Shayan Ali on 12/10/2019.
//  Copyright © 2019 Shayan Ali. All rights reserved.
//

import Foundation

class ClubManager {
    
   static func getClubList(completion: @escaping (APIResult<[Club]>)-> Void) {
          
          Providers.clubProvider.request(.getClub) {  (result) in
              switch result {
              case .success(let response):
                  do {
                      let clubList : [Club] = try JSONDecoder().decode([Club].self, from: response.data)
                      
                      completion(.success(clubList))
                      
                  }
                  catch {
                      completion(.failure(error.localizedDescription))
                  }
                  
              case .failure(let error):
                  completion(.failure(error.localizedDescription))
                  
              }
          }
      }
      
    }
