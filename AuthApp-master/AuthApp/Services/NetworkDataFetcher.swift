//
//  NetworkDataFetcher.swift
//  AuthApp
//
//  Created by Алексей Пархоменко on 01.05.2020.
//  Copyright © 2020 Алексей Пархоменко. All rights reserved.
//

import Foundation

class NetworkDataFetcher {
    
    let networkService = NetworkService()
    
    func fetchTracks(urlString: String, response: @escaping (SearchResponse?) -> Void) {
        networkService.request(urlString: urlString) { (result) in
            switch result {
            case .success(let data):
                do {
                    let tracks = try JSONDecoder().decode(SearchResponse.self, from: data)
                    response(tracks)
                } catch let jsonError {
                    print("Failed to decode JSON", jsonError)
                    response(nil)
                }
            case .failure(let error):
                print("Error received requesting data: \(error.localizedDescription)")
                response(nil)
            }
        }
    }
}
