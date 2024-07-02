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
    
    //TODO: Refactor duplication
    var dateThere: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss" // 2006-03-25T10:30:00+12:00
        guard let date = dateFormatter.date(from: String(launch.dateLocal.prefix(19))) else {
            return "-"
        }
        let displayFormatter = DateFormatter()
        displayFormatter.dateStyle = .short
        displayFormatter.timeStyle = .short
        return displayFormatter.string(from: date)
    }
}
