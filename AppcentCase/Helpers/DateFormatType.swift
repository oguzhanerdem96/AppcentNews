//
//  DateFormatType.swift
//  AppcentCase
//
//  Created by Oğuzhan Erdem on 14.01.2023.
//

import Foundation

enum DateFormatType: String {
    case iso8601 = "yyyy-MM-dd'T'HH:mm:ssZ" // "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
    case monthAndDayAndYear = "MMM d, yyyy"
    case monthAndDayAndYearAndDayNameAndTime = "MMM d, yyyy EEE 'at' hh:mm a"
}
