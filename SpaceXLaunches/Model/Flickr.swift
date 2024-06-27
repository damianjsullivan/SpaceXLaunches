//
//  Flickr.swift
//  SpaceXLaunches
//
//  Created by Damian Sullivan on 27/06/2024.
//

import Foundation

// MARK: - Flickr
struct Flickr {
    let small: [String]
    let original: [String]
    
    enum CodingKeys: String, CodingKey {
        case small = "small"
        case original = "original"
    }
}
