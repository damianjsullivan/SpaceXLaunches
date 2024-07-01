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
                    .font(.headline)
                Text("Date: \(viewModel.launch.dateUTC)")
                Text("Status: \(viewModel.launch.success ?? false ? "Success" : "Failed")")
            }
        }
    }
}

//#Preview {
//    LaunchItemRowView()
//}
