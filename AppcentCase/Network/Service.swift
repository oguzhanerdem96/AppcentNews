//
//  Service.swift
//  AppcentCase
//
//  Created by Oğuzhan Erdem on 5.01.2023.
//

import Foundation

class Service {
    static let shared = Service()
    
    func getData(completion: @escaping (([Article]?, String) -> ())){
        let url = "\(NetworkHelper.shared.baseURL)"
        
    }
}
