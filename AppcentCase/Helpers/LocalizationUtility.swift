//
//  LocalizationUtility.swift
//  AppcentCase
//
//  Created by Oğuzhan Erdem on 12.01.2023.
//

import Foundation

final class LocalizationUtility {
    class func getRegionCode() -> String {
        return Locale.current.regionCode ?? "us"
    }
    
    class func getLanguageCode() -> String {
        return Locale.current.languageCode ?? "en"
    }
    
    class func getTimeZoneIdentifier() -> String {
        return TimeZone.current.identifier
    }
}
