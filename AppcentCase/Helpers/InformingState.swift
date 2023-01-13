//
//  InformingState.swift
//  AppcentCase
//
//  Created by Oğuzhan Erdem on 11.01.2023.
//

import Foundation

enum InformingState: Equatable {
    case data
    case emptyOrError(headerText: String, messageText: String)
    case loading
}
