//
//  LaunchDetailView.swift
//  SpaceXLaunches
//
//  Created by Damian Sullivan on 28/06/2024.
//

import Foundation
import SwiftUI

struct LaunchDetailView: View {
    @State private var viewModel: LaunchDetailViewModel
    
    init(launch: Launch) {
        let viewModel = LaunchDetailViewModel(
            launch: launch
        )
        _viewModel = State(initialValue: viewModel)
    }
    
    
    var body: some View {
        Form {
             // Launch
            Section(header: Text("Launch")) {
                LabeledContent("Flight Number", value: String(viewModel.launch.flightNumber))
                LabeledContent("Name", value: viewModel.launch.name)
                LabeledContent("Status", value: viewModel.launch.success ?? false ? "Success" : "Failed")
                LabeledContent("Date", value: viewModel.dateThere)
            }

            // Details
            if let details = viewModel.launch.details {
                Section(header: Text("Details")) {
                    LabeledContent("Details", value: details)
                        .labelsHidden()
                }
            }
            
            // Failures
            if !viewModel.launch.failures.isEmpty {
                Section(header: Text("Failures")) {
                    ForEach(viewModel.launch.failures, id: \.time) { failure in
                        LabeledContent("Reason", value: failure.reason)
                    }
                }
            }
            
            // Crew
            if !viewModel.launch.crew.isEmpty {
                CrewView(crew: viewModel.launch.crew)
            }
             // Rocket
            RocketView(rocketId: viewModel.launch.rocket)
            
        }
        .navigationBarTitle("Launch Details", displayMode: .inline)
    }
}
