//
//  LaunchImagesView.swift
//  SpaceXLaunches
//
//  Created by Damian Sullivan on 02/07/2024.
//

import SwiftUI

struct LaunchImagesView: View {
    
    private var imageURLs: [String]
    
    init(imageURLs: [String]) {
        self.imageURLs = imageURLs
    }
    
    var body: some View {
        List {
            ForEach(imageURLs, id: \.self) { item in
                AsyncImage(url: URL(string: item)) { image in
                    image
                        .resizable()
                        .scaledToFit()
                } placeholder: {
                    Image(systemName: "photo.fill")
                }
                .frame(width: 300, height: 300)
                .cornerRadius(20)
            }
        }
    }
}

//#Preview {
//    LaunchImagesView()
//}
