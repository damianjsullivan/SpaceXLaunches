//
//  LaunchItemRowModel.swift
//  SpaceXLaunches
//
//  Created by Damian Sullivan on 01/07/2024.
//

import Foundation

@Observable
class LaunchItemRowModel {
    var launch: Launch
    
    init(launch: Launch) {
        self.launch = launch
    }
}
