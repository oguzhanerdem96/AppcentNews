//
//  NetworkHelper.swift
//  AppcentCase
//
//  Created by Oğuzhan Erdem on 2.01.2023.
//

import Foundation

enum HttpMethods: String {
    case get = "GET"
    case post = "POST"
}

enum ErrorTypes: String , Error, Decodable {
    case invalidData = "invalid Data"
    case invalidUrl = "invalid URL"
    case generalError = "an error happened"
}


class NetworkHelper {
    static let shared = NetworkHelper()
    var API_KEY = "206451b170ae4f73834d02e9badb031e"
    let BASE_URL = "https://newsapi.org/"
    var API_PAGE_LIMIT = 20
    
    public func setUP(apiKey: String, pageLimit: Int) {
        self.API_KEY = apiKey
        self.API_PAGE_LIMIT = pageLimit
    }
     
}
