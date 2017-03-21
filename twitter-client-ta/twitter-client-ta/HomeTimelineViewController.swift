//
//  HomeTimelineViewController.swift
//  twitter-client-ta
//
//  Created by Erica Winberry on 3/20/17.
//  Copyright © 2017 Erica Winberry. All rights reserved.
//

import UIKit

class HomeTimelineViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        JSONParser.tweetsFrom(data: JSONParser.sampleJSONData) { (success, tweets) in
            
            if success {
                guard let tweets = tweets else { fatalError("Tweets came back nil.") }
                
                for tweet in tweets {
                    print(tweet.text)
                }
            }
        }
    }
}

extension HomeTimelineViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    }
    
}
