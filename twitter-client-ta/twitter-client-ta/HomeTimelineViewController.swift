//
//  HomeTimelineViewController.swift
//  twitter-client-ta
//
//  Created by Erica Winberry on 3/20/17.
//  Copyright © 2017 Erica Winberry. All rights reserved.
//

import UIKit

class HomeTimelineViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        JSONParser.tweetsFrom(data: JSONParser.sampleJSONData) { (success, tweets) in
            
            if (success) {
                guard let tweets = tweets else { fatalError("Tweets came back nil.") }
                
                for tweet in tweets {
                    print(tweet.text)
                }
            }
        }
    }
}
