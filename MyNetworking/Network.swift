//
//  Network.swift
//  MyNetworking
//
//  Created by imran malik on 31/07/21.
//

import Foundation

public class Network: NetworkProtocol {

    public static var shared: NetworkProtocol = Network()

    public func call(method: HTTPMethod, url: String, parameter: [String : Any]?, completion: completionHandler) {

    }

    private func prepareRequest(_ method: HTTPMethod, url: String, parameter: [String: Any]?, completion: completionHandler) -> URLRequest? {
        guard var request = url.toURLRequest else {
            completion(.failure(.empty))
            return nil
        }
return nil
    }

}

extension String {
    var toURL: URL? {
        return URL(string: self)
    }

    var toURLRequest: URLRequest? {
        guard let url = self.toURL else { return nil }
        var request = URLRequest(url: url, cachePolicy: .reloadIgnoringCacheData, timeoutInterval: 30.0)
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        return request
    }
}
