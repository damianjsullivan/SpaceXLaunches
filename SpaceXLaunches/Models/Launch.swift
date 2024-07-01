//
//  Launch.swift
//  SpaceXLaunches
//
//  Created by Damian Sullivan on 27/06/2024.
//

import Foundation
import SwiftData

// MARK: - Launch
@Model
class Launch: Identifiable, Codable {
    let fairings: Fairings?
    let links: Links
    let staticFireDateUTC: String?
    let staticFireDateUnix: Int?
    let net: Bool
    let window: Int?
    let rocket: String
    let success: Bool?
    let failures: [Failure]
    let details: String?
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
    let launchLibraryID: String?
    @Attribute(.unique) 
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
    
    init(
        fairings: Fairings?,
        links: Links,
        staticFireDateUTC: String?,
        staticFireDateUnix: Int?,
        net: Bool,
        window: Int?,
        rocket: String,
        success: Bool?,
        failures: [Failure],
        details: String?,
        crew: [Crew],
        ships: [String],
        capsules: [String],
        payloads: [String],
        launchpad: String,
        flightNumber: Int,
        name: String,
        dateUTC: String,
        dateUnix: Int,
        dateLocal: Date,
        datePrecision: String,
        upcoming: Bool,
        cores: [Core],
        autoUpdate: Bool,
        tbd: Bool,
        launchLibraryID: String?,
        id: String) {
        self.fairings = fairings
        self.links = links
        self.staticFireDateUTC = staticFireDateUTC
        self.staticFireDateUnix = staticFireDateUnix
        self.net = net
        self.window = window
        self.rocket = rocket
        self.success = success
        self.failures = failures
        self.details = details
        self.crew = crew
        self.ships = ships
        self.capsules = capsules
        self.payloads = payloads
        self.launchpad = launchpad
        self.flightNumber = flightNumber
        self.name = name
        self.dateUTC = dateUTC
        self.dateUnix = dateUnix
        self.dateLocal = dateLocal
        self.datePrecision = datePrecision
        self.upcoming = upcoming
        self.cores = cores
        self.autoUpdate = autoUpdate
        self.tbd = tbd
        self.launchLibraryID = launchLibraryID
        self.id = id
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.fairings = try container.decode(Fairings?.self, forKey: .fairings)
        self.links = try container.decode(Links.self, forKey: .links)
        self.staticFireDateUTC = try container.decode(String?.self, forKey: .staticFireDateUTC)
        self.staticFireDateUnix = try container.decode(Int?.self, forKey: .staticFireDateUnix)
        self.net = try container.decode(Bool.self, forKey: .net)
        self.window = try container.decode(Int?.self, forKey: .window)
        self.rocket = try container.decode(String.self, forKey: .rocket)
        self.success = try container.decode(Bool?.self, forKey: .success)
        self.failures = try container.decode([Failure].self, forKey: .failures)
        self.details = try container.decode(String?.self, forKey: .details)
        self.crew = try container.decode([Crew].self, forKey: .crew)
        self.ships = try container.decode([String].self, forKey: .ships)
        self.capsules = try container.decode([String].self, forKey: .capsules)
        self.payloads = try container.decode([String].self, forKey: .payloads)
        self.launchpad = try container.decode(String.self, forKey: .launchpad)
        self.flightNumber = try container.decode(Int.self, forKey: .flightNumber)
        self.name = try container.decode(String.self, forKey: .name)
        self.dateUTC = try container.decode(String.self, forKey: .dateUTC)
        self.dateUnix = try container.decode(Int.self, forKey: .dateUnix)
        self.dateLocal = try container.decode(Date.self, forKey: .dateLocal)
        self.datePrecision = try container.decode(String.self, forKey: .datePrecision)
        self.upcoming = try container.decode(Bool.self, forKey: .upcoming)
        self.cores = try container.decode([Core].self, forKey: .cores)
        self.autoUpdate = try container.decode(Bool.self, forKey: .autoUpdate)
        self.tbd = try container.decode(Bool.self, forKey: .tbd)
        self.launchLibraryID = try container.decode(String?.self, forKey: .launchLibraryID)
        self.id = try container.decode(String.self, forKey: .id)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(fairings, forKey: .fairings)
        try container.encode(links, forKey: .links)
        try container.encode(staticFireDateUTC, forKey: .staticFireDateUTC)
        try container.encode(staticFireDateUnix, forKey: .staticFireDateUnix)
        try container.encode(net, forKey: .net)
        try container.encode(window, forKey: .window)
        try container.encode(rocket, forKey: .rocket)
        try container.encode(success, forKey: .success)
        try container.encode(failures, forKey: .failures)
        try container.encode(details, forKey: .details)
        try container.encode(crew, forKey: .crew)
        try container.encode(ships, forKey: .ships)
        try container.encode(capsules, forKey: .capsules)
        try container.encode(payloads, forKey: .payloads)
        try container.encode(launchpad, forKey: .launchpad)
        try container.encode(flightNumber, forKey: .flightNumber)
        try container.encode(name, forKey: .name)
        try container.encode(dateUTC, forKey: .dateUTC)
        try container.encode(dateUnix, forKey: .dateUnix)
        try container.encode(dateLocal, forKey: .dateLocal)
        try container.encode(datePrecision, forKey: .datePrecision)
        try container.encode(upcoming, forKey: .upcoming)
        try container.encode(cores, forKey: .cores)
        try container.encode(autoUpdate, forKey: .autoUpdate)
        try container.encode(tbd, forKey: .tbd)
        try container.encode(launchLibraryID, forKey: .launchLibraryID)
        try container.encode(id, forKey: .id)
    }
}
