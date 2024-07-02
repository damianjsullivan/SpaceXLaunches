//
//  Crew.swift
//  SpaceXLaunches
//
//  Created by Damian Sullivan on 27/06/2024.
//

import Foundation

// MARK: - Crew
struct Crew: Codable {
    let crew: String
    let role: String
    
    enum CodingKeys: String, CodingKey {
        case crew = "crew"
        case role = "role"
    }
}
