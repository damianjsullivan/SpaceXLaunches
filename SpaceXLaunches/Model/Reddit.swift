//
//  Reddit.swift
//  SpaceXLaunches
//
//  Created by Damian Sullivan on 27/06/2024.
//

import Foundation

// MARK: - Reddit
struct Reddit {
    let campaign: String?
    let launch: String?
    let media: String?
    let recovery: String?
    
    enum CodingKeys: String, CodingKey {
        case campaign = "campaign"
        case launch = "launch"
        case media = "media"
        case recovery = "recovery"
    }
}
