//
//  LaunchListViewModel.swift
//  SpaceXLaunches
//
//  Created by Damian Sullivan on 28/06/2024.
//

import Foundation
import Combine
import SwiftData
import SwiftUI
import Observation

@Observable 
class LaunchListViewModel {
    var launches: [Launch] = []
    var showAlert = false
    
    private var modelContext: ModelContext
    private var apiClient: ApiClientProtocol
    
    init(modelContext: ModelContext,
         apiClient: ApiClientProtocol = ApiClient()
    ) {
        self.modelContext = modelContext
        self.apiClient = apiClient
        fetchLaunches()
        fetchLaunchesFromApi()
    }
    
    func fetchLaunches() {
        do {
            let descriptor = FetchDescriptor<Launch>(sortBy: [SortDescriptor(\.dateUTC, order: .reverse)])
            launches = try modelContext.fetch(descriptor)
        } catch {
            print("Fetch failed")
            showAlert = true
        }
    }
    
    func saveLaunches(_ launches: [Launch]) {
        for launch in launches {
            modelContext.insert(launch)
        }
        do {
            try modelContext.save()
        } catch {
            print("Failed to save context: \(error)")
            showAlert = true
        }
    }
    
    func fetchLaunchesFromApi() {
        Task {
            do {
                let launches = try await apiClient.fetchLaunches()
                DispatchQueue.main.async {
                    self.saveLaunches(launches)
                    self.fetchLaunches()
                }
            } catch {
                print("Failed to fetch launches: \(error)")
                showAlert = true
            }
        }
    }
    
    func dismissAlert(){
        showAlert = false
    }
}
