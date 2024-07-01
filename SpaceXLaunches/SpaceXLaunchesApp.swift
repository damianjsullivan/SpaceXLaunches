//
//  SpaceXLaunchesApp.swift
//  SpaceXLaunches
//
//  Created by Damian Sullivan on 27/06/2024.
//

import SwiftUI
import SwiftData

@main
struct SpaceXLaunchesApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Launch.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            LaunchListView(modelContext: sharedModelContainer.mainContext)
        }
        .modelContainer(sharedModelContainer)
    }
}
