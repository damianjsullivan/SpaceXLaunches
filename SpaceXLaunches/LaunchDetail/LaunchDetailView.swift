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
        ScrollView {
            VStack(alignment: .leading) {
                Text(viewModel.launch.name)
                    .font(.largeTitle)
                    .padding(.bottom, 10)
                Text("Launch Date: \(viewModel.launch.dateUTC)")
                Text("Status: \(viewModel.launch.success ?? false ? "Success" : "Failed")")
                if let details = viewModel.launch.details {
                    Text("Details: \(details)")
                }
//                ForEach(launch.crew) { crew in
//                    VStack(alignment: .leading) {
//                        Text("Crew Member: \(crew.name)")
//                        Text("Agency: \(crew.agency)")
//                    }
//                    .padding(.top, 10)
//                }
            }
            .padding()
        }
        .navigationBarTitle("Launch Details", displayMode: .inline)
    }
}
