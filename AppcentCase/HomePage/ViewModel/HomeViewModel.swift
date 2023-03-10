//
//  HomeViewModel.swift
//  AppcentCase
//
//  Created by Oğuzhan Erdem on 3.01.2023.
//

import Foundation

protocol NewsViewModelDelegate: AnyObject {
    func getDataForNewsViewModel(error: ErrorTypes?)
}

final class NewsViewModel {
    weak var delegate: NewsViewModelDelegate?
    
    private(set) var data: PaginationModel<NewsModel>?
    
    private(set) var state: InformingState = .loading
    
    func fetchData() {
        state = .loading
        
        NetworkManager.shared.request(
            endpoint: .topHeadlines(
                countryCode: LocalizationUtility.getRegionCode()
            ),
            page: 1
        ) { [weak self] (result: Result<PaginationModel<NewsModel>?, ErrorTypes>) in
            guard let self = self else {
                return
            }
            
            switch result {
            case .success(let data):
                if data?.items.isNotEmpty ?? false {
                    self.state = .data
                } else {
                    self.state = .emptyOrError(
                        headerText: "Empty",
                        messageText: "No news"
                    )
                }
                
                self.data = data
                
                self.delegate?.getDataForNewsViewModel(error: nil)
                
            case .failure(let error):
                self.state = .emptyOrError(
                    headerText: error.title ?? "API Error",
                    messageText: error.message ?? "An error has occurred."
                )
                
                self.delegate?.getDataForNewsViewModel(error: error)
            }
        }
    }
    
    func fetchDataForPagination() {
        data?.setIsPaginating(isPaginating: true)
        data?.increasePage()
        
        NewsAPI.shared.request(
            endpoint: .topHeadlines(
                countryCode: LocalizationUtility.getRegionCode()
            ),
            page: data?.page ?? 2
        ) { [weak self] (result: Result<PaginationModel<NewsModel>?, ErrorModel>) in
            guard let self = self else {
                return
            }
            
            switch result {
            case .success(let data):
                self.data?.appendItems(items: data?.items)
                
                self.delegate?.getDataForNewsViewModel(error: nil)
                
            case .failure(let error):
                self.state = .emptyOrError(
                    headerText: error.title ?? "API Error",
                    messageText: error.message ?? "An error has occurred."
                )
                
                self.delegate?.getDataForNewsViewModel(error: error)
            }
            
            self.data?.setIsPaginating(isPaginating: false)
        }
    }
}
