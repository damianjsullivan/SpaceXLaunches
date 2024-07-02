//
//  CrewMemberViewModel.swift
//  SpaceXLaunches
//
//  Created by Damian Sullivan on 02/07/2024.
//

import Foundation

@Observable
class CrewViewModel {
    var crew: [Crew]
    private var apiClient: ApiClient
    
    init(crew: [Crew],
         apiClient: ApiClient = ApiClient()
    ) {
        self.crew = crew
        self.apiClient = apiClient
    }
    
    func fetchCrewMember(id: String) async throws -> CrewMember? {
        do {
            let crewMember = try await apiClient.fetchCrewMember(id: id)
            return crewMember
        } catch {
            print("Failed to fetch crew member: \(error)")
            return nil
        }
    }
}
