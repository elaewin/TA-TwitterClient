//
//  User.swift
//  twitter-client-ta
//
//  Created by Erica Winberry on 3/20/17.
//  Copyright © 2017 Erica Winberry. All rights reserved.
//

import Foundation

class User {
    
    let name: String
    let profileImageURL: String
    let location: String
    
    init(name: String, profileImageURL: String, location: String) {
        self.name = name
        self.profileImageURL = profileImageURL
        self.location = location
    }
    
}
