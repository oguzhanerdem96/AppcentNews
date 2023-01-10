//
//  NetworkManager.swift
//  AppcentCase
//
//  Created by Oğuzhan Erdem on 2.01.2023.
//

import Foundation
import Alamofire

class NetworkManager {
   public static let shared = NetworkManager()
    private init(){}
    public func request<T:Decodable>(endpoit: Endpoint, page: Int? = nil, completion: @escaping (Result<T?, ErrorTypes>)->Void) {
        
        var parameters = endpoit.parameters
        if let page = page {
            if parameters == nil {
                parameters = Parameters()
            }
            parameters?["page"] = page
        }
        
        let dataRequest = AF.request(endpoit.urlString,
                                     method: endpoit.httpMethod,
                                     parameters: parameters,
                                     headers: endpoit.headers)
        
        dataRequest.response {(result) in
            if let _ = result.error {
                completion(.failure(.generalError))
                return
            }
            guard let response = result.response else {
                completion(.failure(.invalidData))
                return
            }
            
            if (200 ..< 300) ~= response.statusCode { // success
                if let data = result.data {
                    do {
                        let decodedData = try JSONDecoder().decode(T.self, from: data)
                        completion(.success(decodedData))
                    } catch {
                        print(error)
                        completion(.failure(.invalidData))
                    }
                } else {
                        completion(.success(nil))
                    }
            } else { // failure
                if let data = result.data {
                    do {
                        let decodeData = try JSONDecoder().decode(ErrorTypes.self, from: data)
                        completion(.failure(decodeData))
                    } catch {
                         print(error)
                        completion(.failure(.invalidData))
                    }
                } else {
                    completion(.failure(.invalidData))
                }
                
            }
        }
    }
    
}
