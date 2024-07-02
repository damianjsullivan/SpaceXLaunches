//
//  RocketViewModel.swift
//  SpaceXLaunches
//
//  Created by Damian Sullivan on 02/07/2024.
//

import Foundation

@Observable
class RocketViewModel {
    var rocket: Rocket?

    private var rocketId: String
    private var apiClient: ApiClient
    
    init(rocketId: String,
         apiClient: ApiClient = ApiClient()
    ) {
        self.rocketId = rocketId
        self.apiClient = apiClient
    }
    
    func fetchRocket() async {
        do {
            rocket = try await apiClient.fetchRocket(id: rocketId)
        } catch {
            print("Failed to fetch rocket: \(error)")
        }
    }
}
