//
//  SearchResponse.swift
//  AuthApp
//
//  Created by Алексей Пархоменко on 01.05.2020.
//  Copyright © 2020 Алексей Пархоменко. All rights reserved.
//

import Foundation

struct SearchResponse: Decodable {
    var resultCount: Int
    var results: [Track]
}

struct Track: Decodable {
    var trackName: String
    var collectionName: String?
    var artistName: String
    var artworkUrl60: String?
}
