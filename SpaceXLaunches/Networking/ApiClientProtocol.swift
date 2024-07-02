//
//  ApiClientProtocol.swift
//  SpaceXLaunches
//
//  Created by Damian Sullivan on 02/07/2024.
//

import Foundation

protocol ApiClientProtocol {
    func fetchLaunches() async throws -> [Launch]
    func fetchCrewMember(id: String) async throws -> CrewMember
    func fetchRocket(id: String) async throws -> Rocket
}
