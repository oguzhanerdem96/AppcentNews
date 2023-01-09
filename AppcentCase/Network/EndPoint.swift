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

extension Endpoint {
    var urlString: String {
        return "\(NetworkHelper.shared.BASE_URL)/\(version)/\(path)"
    }
    var version: String {
        switch self {
        case .topHeadlines:
            return "v2"
        case .everything:
            return "v2"
        }
    }
    var path: String {
        switch self {
        case .topHeadlines:
            return "top-headlines"
        case.everything:
            return "everything"
        }
    }
}
    extension Endpoint {
        var httpMethod: HTTPMethod {
            switch self {
            case .topHeadlines,
                    .everything:
                return .get
            }
        }
    }

extension Endpoint {
    var parameters: Parameters? {
        switch self {
        case .topHeadlines(let countryCode):
            return [
                "apiKey": NetworkHelper.shared.API_KEY,
                "pageSize": NetworkHelper.shared.API_PAGE_LIMIT
                "country": countryCode
                "category": "general"
            ]
        }
        
    }
}
