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
    
    enum CodingKeys: String, CodingKey {
        case fairings = "fairings"
        case links = "links"
        case staticFireDateUTC = "static_fire_date_utc"
        case staticFireDateUnix = "static_fire_date_unix"
        case net = "net"
        case window = "window"
        case rocket = "rocket"
        case success = "success"
        case failures = "failures"
        case details = "details"
        case crew = "crew"
        case ships = "ships"
        case capsules = "capsules"
        case payloads = "payloads"
        case launchpad = "launchpad"
        case flightNumber = "flight_number"
        case name = "name"
        case dateUTC = "date_utc"
        case dateUnix = "date_unix"
        case dateLocal = "date_local"
        case datePrecision = "date_precision"
        case upcoming = "upcoming"
        case cores = "cores"
        case autoUpdate = "auto_update"
        case tbd = "tbd"
        case launchLibraryID = "launch_library_id"
        case id = "id"
    }
}
