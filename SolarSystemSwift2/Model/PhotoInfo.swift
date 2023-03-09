//
//  PhotoInfo.swift
//  SolarSystem
//
//  Created by Mindy Douglas on 5/16/22.
//

import Foundation

struct PhotoInfo: Codable {
    var title: String
    var description: String
    var url: URL
    var copyright: String?  // optional - included if it is needed
    
    enum CodingKeys: String, CodingKey {
        case title
        case description = "explanation"
        case url
        case copyright
    }
}

