//
//  Rocket.swift
//  SpaceXLaunches
//
//  Created by Damian Sullivan on 02/07/2024.
//

import Foundation

// MARK: - Rocket
struct Rocket: Codable {
    let height: Diameter
    let diameter: Diameter
    let mass: Mass
    let firstStage: FirstStage
    let secondStage: SecondStage
    let engines: Engines
    let landingLegs: LandingLegs
    let payloadWeights: [PayloadWeight]
    let flickrImages: [String]
    let name: String
    let type: String
    let active: Bool
    let stages: Int
    let boosters: Int
    let costPerLaunch: Int
    let successRatePct: Int
    let firstFlight: String
    let country: String
    let company: String
    let wikipedia: String
    let description: String
    let id: String
}

// MARK: - Diameter
struct Diameter: Codable {
    let meters: Double
    let feet: Double
}

// MARK: - Engines
struct Engines: Codable {
    let isp: ISP
    let thrustSeaLevel: Thrust
    let thrustVacuum: Thrust
    let number: Int
    let type: String
    let version: String
    let layout: String
    let engineLossMax: Int
    let propellant1: String
    let propellant2: String
    let thrustToWeight: Double
}

// MARK: - ISP
struct ISP: Codable {
    let seaLevel: Int
    let vacuum: Int
}

// MARK: - Thrust
struct Thrust: Codable {
    let kN: Int
    let lbf: Int
}

// MARK: - FirstStage
struct FirstStage: Codable {
    let thrustSeaLevel: Thrust
    let thrustVacuum: Thrust
    let reusable: Bool
    let engines: Int
    let fuelAmountTons: Int
    let burnTimeSEC: Int
}

// MARK: - LandingLegs
struct LandingLegs: Codable {
    let number: Int
    let material: String
}

// MARK: - Mass
struct Mass: Codable {
    let kg: Int
    let lb: Int
}

// MARK: - PayloadWeight
struct PayloadWeight: Codable {
    let id: String
    let name: String
    let kg: Int
    let lb: Int
}

// MARK: - SecondStage
struct SecondStage: Codable {
    let thrust: Thrust
    let payloads: Payloads
    let reusable: Bool
    let engines: Int
    let fuelAmountTons: Int
    let burnTimeSEC: Int
}

// MARK: - Payloads
struct Payloads: Codable {
    let compositeFairing: CompositeFairing
    let option1: String
}

// MARK: - CompositeFairing
struct CompositeFairing: Codable {
    let height: Diameter
    let diameter: Diameter
}
