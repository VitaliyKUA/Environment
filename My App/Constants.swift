//
//  Constants.swift
//  My App
//
//  Created by Atthachai Meethong on 7/3/17.
//  Copyright © 2017 Atthachai Meethong. All rights reserved.
//

import Foundation

struct Constants {
    static let baseURL = Constants.getConfig().object(forKey: "baseURL") as! String
    
    static func getConfig() -> NSDictionary {
        if let env = Bundle.main.object(forInfoDictionaryKey: "Config"),
            let path = Bundle.main.path(forResource: "Configuration", ofType: "plist"),
            let configFile = NSDictionary.init(contentsOfFile: path) {
            return configFile[env] as! NSDictionary
        } else {
            return NSDictionary()
        }
    }
}
