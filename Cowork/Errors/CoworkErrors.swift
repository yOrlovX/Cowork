//
//  CoworkErrors.swift
//  Cowork
//
//  Created by Yaroslav Orlov on 12.03.2025.
//

import Foundation

enum CoworkError: Error, LocalizedError {
case invalidURL
case apiError(Error)
case createUserError(Error)
case userSignInError(Error)
case userSignOutError(Error)
    
    var errorDescription: String? {
        switch self {
        case .invalidURL:
            return "The url was invalid"
        case .apiError(let error):
            return error.localizedDescription
        case .createUserError(let error):
            return error.localizedDescription
        case .userSignInError(let error):
            return error.localizedDescription
        case .userSignOutError(let error):
            return error.localizedDescription
        }
    }
}
