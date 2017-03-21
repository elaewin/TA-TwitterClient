//
//  API.swift
//  twitter-client-ta
//
//  Created by Erica Winberry on 3/21/17.
//  Copyright © 2017 Erica Winberry. All rights reserved.
//

import UIKit
import Accounts

typealias AccountCallback = ACAccount? -> ()


class API {
    
    var account: ACAccount?
    
    private func login(callback: @escaping AccountCallback) {
        
        let accountStore = ACAccountStore()
        
        let accountType = accountStore.accountType(withAccountTypeIdentifier: ACAccountTypeIdentifierTwitter)
        
        accountStore.requestAccessToAccounts(with: accountType, options: nil) { (success, error) in
            
            if let error = error {
                print("Error: \(error.localizedDescription)")
                callback(nil)
                return
            }
            
            if success {
                
                if let account = accountStore.accounts(with: accountType).first as? ACAccount {
                    callback(account)
                }
                
            } else {
                print("The user did not allow access to their account.")
                callback(nil)
            }
        }
    }
}
