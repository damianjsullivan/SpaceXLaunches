//
//  RocketViewModel.swift
//  SpaceXLaunches
//
//  Created by Damian Sullivan on 02/07/2024.
//

import Foundation

@Observable
class RocketViewModel {
    var rocketId: String
    private var apiClient: ApiClient
    
    init(rocketId: String,
         apiClient: ApiClient = ApiClient()
    ) {
        self.rocketId = rocketId
        self.apiClient = apiClient
    }
    
    func fetchRocket(id: String) async throws -> Rocket? {
        do {
            let rocket = try await apiClient.fetchRocket(id: id)
            return rocket
        } catch {
            print("Failed to fetch rocket: \(error)")
            return nil
        }
    }
}
