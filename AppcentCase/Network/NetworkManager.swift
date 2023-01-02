//
//  NetworkManager.swift
//  AppcentCase
//
//  Created by Oğuzhan Erdem on 2.01.2023.
//

import Foundation

enum HttpMethods: String {
    case get = "GET"
    case post = "POST"
}

enum ErrorTypes: String , Error {
    case invalidData = "invalid Data"
    case invalidUrl = "invalid URL"
    case generalError = "an error happened"
}


class NetworkHelper {
    static let shared = NetworkHelper()
     
}
