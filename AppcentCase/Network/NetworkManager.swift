//
//  NetworkManager.swift
//  AppcentCase
//
//  Created by Oğuzhan Erdem on 2.01.2023.
//

import Foundation
import Alamofire

class NetworkManager {
    static let shared = NetworkManager()
    private init(){}
    public func request<T:Decodable>(endpoit: Endpoint, page: Int? = nil, completion: @escaping ((Result<T?, ErrorTypes>)->Void)) {
        
    }
    
}
