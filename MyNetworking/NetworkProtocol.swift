//
//  NetworkProtocol.swift
//  MyNetworking
//
//  Created by imran malik on 31/07/21.
//

import Foundation

public typealias completionHandler = (Result<[String: Any], NetworkError>) -> Void

public protocol NetworkProtocol {
    static var shared: NetworkProtocol { get }
    func call(method: HTTPMethod, url: String, parameter: [String: Any]?, completion: completionHandler)
}
