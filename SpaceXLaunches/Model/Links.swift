//
//  Links.swift
//  SpaceXLaunches
//
//  Created by Damian Sullivan on 27/06/2024.
//

import Foundation

// MARK: - Links
struct Links {
    let patch: Patch
    let reddit: Reddit
    let flickr: Flickr
    let presskit: String?
    let webcast: String
    let youtubeID: String
    let article: String?
    let wikipedia: String?
    
    enum CodingKeys: String, CodingKey {
        case patch = "patch"
        case reddit = "reddit"
        case flickr = "flickr"
        case presskit = "presskit"
        case webcast = "webcast"
        case youtubeID = "youtube_id"
        case article = "article"
        case wikipedia = "wikipedia"
    }
}
