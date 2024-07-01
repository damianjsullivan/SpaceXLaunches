//
//  LaunchDetailViewModel.swift
//  SpaceXLaunches
//
//  Created by Damian Sullivan on 28/06/2024.
//

import Foundation

@Observable
class LaunchDetailViewModel {
    var launch: Launch

    init(launch: Launch) {
        self.launch = launch
    }
}
