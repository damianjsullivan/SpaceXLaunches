//
//  LaunchListView.swift
//  SpaceXLaunches
//
//  Created by Damian Sullivan on 28/06/2024.
//

import Foundation
import SwiftUI
import SwiftData

struct LaunchListView: View {
    
    @State private var viewModel: LaunchListViewModel
    
    init(modelContext: ModelContext) {
        let viewModel = LaunchListViewModel(
            modelContext: modelContext,
            apiClient: ApiClient()
        )
        _viewModel = State(initialValue: viewModel)
    }
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.launches) { launch in
                    LaunchItemRowView(launch: launch)
                }
            }
            .navigationBarTitle("SpaceX Launches")
            .refreshable {
                viewModel.fetchLaunchesFromApi()
            }
        }
        .alert(isPresented: $viewModel.showAlert) {
            return Alert(
                title: Text("Error"),
                message: Text("Something went wrong."),
                dismissButton: .default(Text("OK")) {
                    viewModel.dismissAlert()
                }
            )
        }
    }
}

//#Preview {
//    LaunchListView(modelContext: <#ModelContext#>)
//}
