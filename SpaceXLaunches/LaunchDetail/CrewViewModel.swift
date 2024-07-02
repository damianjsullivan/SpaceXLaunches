//
//  CrewMemberViewModel.swift
//  SpaceXLaunches
//
//  Created by Damian Sullivan on 02/07/2024.
//

import Foundation

@Observable
class CrewViewModel {
    var crewMembers = [CrewMember]()

    private var crew: [Crew]
    private var apiClient: ApiClientProtocol
    private var dataLoaded: Bool = false
    
    init(crew: [Crew],
         apiClient: ApiClientProtocol = ApiClient()
    ) {
        self.crew = crew
        self.apiClient = apiClient
    }
    
    func fetchCrew() async {
        if dataLoaded {
            return
        }
        for item in crew {
            if let crewMember = await fetchCrewMember(id: item.crew) {
                crewMembers.append(crewMember)
            }
            dataLoaded = true
        }
    }
    
    func fetchCrewMember(id: String) async -> CrewMember? {
        do {
            return try await apiClient.fetchCrewMember(id: id)
        } catch {
            print("Failed to fetch crew member: \(error)")
            return nil
        }
    }
}
