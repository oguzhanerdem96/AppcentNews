//
//  EndPoint.swift
//  AppcentCase
//
//  Created by Oğuzhan Erdem on 6.01.2023.
//

import Foundation
import Alamofire

public enum Endpoint: Equatable {
case topHeadlines(countryCode: String)
case everything(query: String, languageCode: String)
}
