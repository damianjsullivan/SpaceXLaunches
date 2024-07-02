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
        let viewModel = RocketViewModel(rocketId: rocketId)
        _viewModel = State(initialValue: viewModel)
    }
    
    var body: some View {
        Section(header: Text("Rocket")) {
            if let rocket = viewModel.rocket {
                LabeledContent("Name", value: String(rocket.name))
                LabeledContent("Height", value: "\(rocket.height.meters) m")
                LabeledContent("Diameter", value: "\(rocket.diameter.meters) m")
                LabeledContent("Mass", value: "\(rocket.mass.kg) kg")
            }
            else {
                LabeledContent("-", value: "details not available")
                    .labelsHidden()
            }
        }
        .task {
            await viewModel.fetchRocket()
        }
    }
}

//#Preview {
//    RocketView()
//}
