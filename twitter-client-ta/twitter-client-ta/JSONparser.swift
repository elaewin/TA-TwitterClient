//
//  JSONparser.swift
//  twitter-client-ta
//
//  Created by Erica Winberry on 3/20/17.
//  Copyright © 2017 Erica Winberry. All rights reserved.
//

import Foundation

typealias JSONParserCallback = (Bool, [Tweet]?) -> ()

class JSONParser {
    
    class func tweetsFrom(data: Data, callback: JSONParserCallback) {
        
        do {
            if let rootObject = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [[String: Any]] {
                
                var tweets = [Tweet]()
                
                for tweetDictionary in rootObject {
                    
                   // more logic here for dealing with each dictionary and creating tweets.
                    
                }
            }
            
        } catch {
            print("Error Serializing JSON")
            callback(false, nil)
        }
        
    }
    
}
