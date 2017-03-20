//
//  Tweet.swift
//  twitter-client-ta
//
//  Created by Erica Winberry on 3/20/17.
//  Copyright © 2017 Erica Winberry. All rights reserved.
//

import Foundation


class Tweet {
    
    let text: String
    let id: String
    
    let user: User?
    
    init?(json: [String: Any]) { //falliable initializer, must take in json dict.
        if let text = json["text"] as? String, let id = json["id_str"] as? String {
            self.text = text
            self.id = id
        } else {
            return nil
        }
    }
}
