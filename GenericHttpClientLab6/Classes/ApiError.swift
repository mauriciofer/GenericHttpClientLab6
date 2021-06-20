//
//  ApiError.swift
//  GenericHttpClientLab6
//
//  Created by Mauricio Fernandez Mora on 20/6/21.
//

import Foundation

enum ApiError: Error {
    case requestFailed(description: String)
    case jsonConversionFailure(description: String)
    case invalidData
    case responseUnsuccessful(description: String)
    case jsonParsingFailure
    case noInternet
    case failedSerialization
}
