//
//  Patch.swift
//  SpaceXLaunches
//
//  Created by Damian Sullivan on 27/06/2024.
//

import Foundation

// MARK: - Patch
struct Patch {
    let small: String
    let large: String
    
    enum CodingKeys: String, CodingKey {
        case small = "small"
        case large = "large"
    }
}
