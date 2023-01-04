//
//  HomeViewModel.swift
//  AppcentCase
//
//  Created by Oğuzhan Erdem on 3.01.2023.
//

import Foundation

protocol NewsViewModelProtocol {
    var view: HomeScreenProtocol? {get set }
    func viewDidload()
}

class HomeViewModel {
    weak var view: HomeScreenProtocol?
}

extension HomeViewModel: HomeScreenProtocol {
    func viewDidLoad() {
        
    }
}
