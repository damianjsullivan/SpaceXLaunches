//
//  Failure.swift
//  SpaceXLaunches
//
//  Created by Damian Sullivan on 27/06/2024.
//

import Foundation

// MARK: - Failure
struct Failure: Codable {
    let time: Int
    let altitude: Int?
    let reason: String
    
    enum CodingKeys: String, CodingKey {
        case time = "time"
        case altitude = "altitude"
        case reason = "reason"
    }
}
