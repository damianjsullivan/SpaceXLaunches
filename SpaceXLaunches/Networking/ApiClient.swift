//
//  NetworkManager.swift
//  SpaceXLaunches
//
//  Created by Damian Sullivan on 28/06/2024.
//

import Foundation

class ApiClient: ApiClientProtocol {
    private let baseURL = "https://api.spacexdata.com"
    
    func fetchLaunches() async throws -> [Launch] {
        guard let url = URL(string: "\(baseURL)/v5/launches") else {
            throw URLError(.badURL)
        }
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw URLError(.badServerResponse)
        }
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        return try decoder.decode([Launch].self, from: data)
    }
    
    func fetchCrewMember(id: String) async throws -> CrewMember {
        guard let url = URL(string: "\(baseURL)/v4/crew/\(id)") else {
            throw URLError(.badURL)
        }
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw URLError(.badServerResponse)
        }
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        return try decoder.decode(CrewMember.self, from: data)
    }
    
    func fetchRocket(id: String) async throws -> Rocket {
        guard let url = URL(string: "\(baseURL)/v4/rockets/\(id)") else {
            throw URLError(.badURL)
        }
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw URLError(.badServerResponse)
        }
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        return try decoder.decode(Rocket.self, from: data)
    }
}
