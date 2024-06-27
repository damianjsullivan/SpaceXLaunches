//
//  NetworkManager.swift
//  SpaceXLaunches
//
//  Created by Damian Sullivan on 28/06/2024.
//

import Foundation

class ApiClient {
    private let baseURL = "https://api.spacexdata.com/v5"
    
    func fetchLaunches() async throws -> [Launch] {
        guard let url = URL(string: "\(baseURL)/launches") else {
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
}
