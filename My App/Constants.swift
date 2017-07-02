//
//  Constants.swift
//  My App
//
//  Created by Atthachai Meethong on 7/3/17.
//  Copyright © 2017 Atthachai Meethong. All rights reserved.
//

import Foundation

struct Constants {
    
    static let baseUrl = Constants.getConfiguration(value: "baseUrl")
    
    static private func getConfiguration(value: String) -> String {
        let path = Bundle.main.path(forResource: "Configuration", ofType: "plist")
        if let path = path {
            let config = NSDictionary(contentsOfFile: path)!
            return config[value] as! String
        } else {
            return "Configuration not found"
        }
    }
}
