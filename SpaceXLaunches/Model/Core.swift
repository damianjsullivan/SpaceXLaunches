//
//  Core.swift
//  SpaceXLaunches
//
//  Created by Damian Sullivan on 27/06/2024.
//

import Foundation

// MARK: - Core
struct Core {
    let core: String
    let flight: Int
    let gridfins: Bool
    let legs: Bool
    let reused: Bool
    let landingAttempt: Bool
    let landingSuccess: Bool?
    let landingType: String
    let landpad: String?
}
