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
    func fetchRequest<T:Codable>(type:T.Type ,url: String, method:HTTPMethod, completion:@escaping((Result<T,ErrorTypes>)->())){
        AF.request(url, method: method).responseDecodable(of: T.self) { response in
            switch response.result {
            case .success(let data):
                completion(.success(data))
            case .failure(_):
                completion(.failure(.generalError))
            }
        }
    }
    
}
