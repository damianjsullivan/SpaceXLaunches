//
//  CrewMember.swift
//  SpaceXLaunches
//
//  Created by Damian Sullivan on 02/07/2024.
//

import Foundation

struct CrewMember: Codable {
    let name: String
    let agency: String
    let image: String
    let wikipedia: String
    let launches: [String]
    let status: String
    let id: String
}
