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
                HStack {
                    Text("Date:")
                        .fontWeight(.bold)
                    Spacer()
                    Text("\(viewModel.launch.dateLocal.formatted(date: .numeric, time: .shortened))")
                }
                HStack {
                    Text("Status:")
                        .fontWeight(.bold)
                    Spacer()
                    if viewModel.launch.success ?? false {
                        Text("Success")
                            .foregroundStyle(.green)
                    }
                    else {
                        Text("Failed")
                            .foregroundStyle(.red)
                    }
                }
                if let failure = viewModel.launch.failures.first {
                    HStack(alignment: .firstTextBaseline) {
                        Text("Reason:")
                            .fontWeight(.bold)
                        Text("\(failure.reason)")
                    }
                }
            }
        }
    }
}

//#Preview {
//    LaunchItemRowView()
//}
