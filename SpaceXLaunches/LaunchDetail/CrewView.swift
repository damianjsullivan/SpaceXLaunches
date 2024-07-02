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
        let viewModel = CrewViewModel(
            crew: crew
        )
        _viewModel = State(initialValue: viewModel)
    }
    
    var body: some View {
        Section(header: Text("Crew")) {
            LabeledContent("TODO", value: "TODO")
//            ForEach(viewModel.launch.crew, id: \.crew) { crew in
//                LabeledContent(crew.role, value: crew.crew)
//            }
        }
    }
}

//#Preview {
//    CrewView()
//}
