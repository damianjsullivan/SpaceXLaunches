//
//  Core.swift
//  SpaceXLaunches
//
//  Created by Damian Sullivan on 27/06/2024.
//

import Foundation

// MARK: - Core
struct Core: Codable {
    let core: String
    let flight: Int
    let gridfins: Bool
    let legs: Bool
    let reused: Bool
    let landingAttempt: Bool
    let landingSuccess: Bool?
    let landingType: String
    let landpad: String?
    
    enum CodingKeys: String, CodingKey {
        case core = "core"
        case flight = "flight"
        case gridfins = "gridfins"
        case legs = "legs"
        case reused = "reused"
        case landingAttempt = "landing_attempt"
        case landingSuccess = "landing_success"
        case landingType = "landing_type"
        case landpad = "landpad"
    }
}
