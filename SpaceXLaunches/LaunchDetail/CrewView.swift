//
//  CrewMemberView.swift
//  SpaceXLaunches
//
//  Created by Damian Sullivan on 02/07/2024.
//

import SwiftUI

struct CrewView: View {
    @State private var viewModel: CrewViewModel
    
    init(crew: [Crew]) {
        let viewModel = CrewViewModel(crew: crew)
        _viewModel = State(initialValue: viewModel)
    }
    
    var body: some View {
        Section(header: Text("Crew")) {
            if !viewModel.crewMembers.isEmpty {
                ForEach(viewModel.crewMembers, id: \.name) { item in
                    LabeledContent("Name", value: item.name)
                }
            }
            else {
                LabeledContent("-", value: "none")
                    .labelsHidden()
            }
        }
        .task {
            await viewModel.fetchCrew()
        }
    }
}

//#Preview {
//    CrewView()
//}
