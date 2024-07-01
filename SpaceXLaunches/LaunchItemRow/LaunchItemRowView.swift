//
//  LaunchItemRowView.swift
//  SpaceXLaunches
//
//  Created by Damian Sullivan on 01/07/2024.
//

import SwiftUI

struct LaunchItemRowView: View {
    
    @State private var viewModel: LaunchItemRowModel
    
    init(launch: Launch) {
        let viewModel = LaunchItemRowModel(
            launch: launch
        )
        _viewModel = State(initialValue: viewModel)
    }
    
    var body: some View {        
        NavigationLink(destination: LaunchDetailView(launch: viewModel.launch)) {
            VStack(alignment: .leading) {
                Text(viewModel.launch.name)
                    .font(.title3)
                LabeledContent("Date There", value: viewModel.dateThere)
                LabeledContent("Date Here", value: viewModel.dateHere)
                LabeledContent("Status", value: viewModel.launch.success ?? false ? "Success" : "Failed")
                if let failure = viewModel.launch.failures.first {
                    LabeledContent("Reason", value: failure.reason)
                }
            }
        }
    }
}

//#Preview {
//    LaunchItemRowView()
//}
