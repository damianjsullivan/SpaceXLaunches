//
//  RocketView.swift
//  SpaceXLaunches
//
//  Created by Damian Sullivan on 02/07/2024.
//

import SwiftUI

struct RocketView: View {
    @State private var viewModel: RocketViewModel
    
    init(rocketId: String) {
        let viewModel = RocketViewModel(
            rocketId: rocketId
        )
        _viewModel = State(initialValue: viewModel)
    }
    
    var body: some View {
        Section(header: Text("Rocket")) {
            LabeledContent("Rocket", value: "TODO")
        }
    }
}

//#Preview {
//    RocketView()
//}
