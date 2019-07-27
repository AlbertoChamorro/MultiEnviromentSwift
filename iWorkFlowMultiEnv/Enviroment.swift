//
//  Enviroment.swift
//  iWorkFlowMultiEnv
//
//  Created by GSE on 22/5/19.
//  Copyright © 2019 GSE. All rights reserved.
//

import Foundation

public enum Enviroment: String {
    case QA = "QA"
    case development = "Development"
    case staging = "Staging"
    case production = "Production"
    
}

public enum Key {
    enum Plist: String {
        case apiUrl = "API_URL"
        case apiKey = "API_KEY"
        case appEnvironment = "APP_ENVIRONMENT"
        case appName = "CFBundleName"
        case appIdentifier = "CFBundleIdentifier"
        case appVersion = "CFBundleVersion"
    }
}

public class Config {
    
    public static let infoConfig: [String: Any] = {
        guard let data = Bundle.main.infoDictionary else {
            fatalError("Plist file not found")
        }
       return data
    }()
    
    public static let apiUrl: URL = {
        guard let data = infoConfig[Key.Plist.apiUrl.rawValue] as? String else {
            fatalError("apiUrl not set in plist value for this enviroment")
        }
        
        guard let url = URL(string: data) else {
            fatalError("apiUrl is ivalid")
        }
        return url
    }()
    
    public static let apiKey: String = {
        guard let data = infoConfig[Key.Plist.apiKey.rawValue] as? String else {
            fatalError("apiKey not set in plist value for this enviroment")
        }
        return data
    }()
    
    public static let appName: String = {
        guard let data = infoConfig[Key.Plist.appName.rawValue] as? String else {
            fatalError("appName not set in plist value for this enviroment")
        }
        return data
    }()
    
    public static let appVersion: String = {
        guard let data = infoConfig[Key.Plist.appVersion.rawValue] as? String else {
            fatalError("appVersion not set in plist value for this enviroment")
        }
        return data
    }()
    
    public static let appIdentifier: String = {
        guard let data = infoConfig[Key.Plist.appIdentifier.rawValue] as? String else {
            fatalError("appIdentifier not set in plist value for this enviroment")
        }
        return data
    }()
    
    public static let appEnvironment: String = {
        guard let data = infoConfig[Key.Plist.appEnvironment.rawValue] as? String else {
            fatalError("appEnvironment not set in plist value for this enviroment")
        }
        return data
    }()
}
