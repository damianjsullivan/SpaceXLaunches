//
//  Launch.swift
//  SpaceXLaunches
//
//  Created by Damian Sullivan on 27/06/2024.
//

import Foundation

// MARK: - Launch
struct Launch {
    let fairings: Fairings
    let links: Links
    let staticFireDateUTC: String
    let staticFireDateUnix: Int
    let net: Bool
    let window: Int
    let rocket: String
    let success: Bool
    let failures: [Failure]
    let details: String
    let crew: [Crew]
    let ships: [String]
    let capsules: [String]
    let payloads: [String]
    let launchpad: String
    let flightNumber: Int
    let name: String
    let dateUTC: String
    let dateUnix: Int
    let dateLocal: Date
    let datePrecision: String
    let upcoming: Bool
    let cores: [Core]
    let autoUpdate: Bool
    let tbd: Bool
    let launchLibraryID: UUID?
    let id: String
}
