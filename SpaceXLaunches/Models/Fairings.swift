//
//  Fairings.swift
//  SpaceXLaunches
//
//  Created by Damian Sullivan on 27/06/2024.
//

import Foundation

// MARK: - Fairings
struct Fairings: Codable {
    let reused: Bool?
    let recoveryAttempt: Bool?
    let recovered: Bool?
    let ships: [String]
    
    enum CodingKeys: String, CodingKey {
        case reused = "reused"
        case recoveryAttempt = "recovery_attempt"
        case recovered = "recovered"
        case ships = "ships"
    }
}
