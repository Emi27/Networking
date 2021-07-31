//
//  NetworkError.swift
//  MyNetworking
//
//  Created by imran malik on 31/07/21.
//

import Foundation

public struct NetworkError: Codable, Error {
    public let message: String
    public let code: Int

    public static let unableToCreateRequest = {
        return NetworkError(message: "Unable to create url request", code: 1001)
    }

    public static var empty = {
        return NetworkError(message: "Empty data", code: 1002)
    }
}
