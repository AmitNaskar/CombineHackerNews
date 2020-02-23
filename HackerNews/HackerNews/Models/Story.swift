//
//  Story.swift
//  HackerNews
//
//  Created by Amit Naskar on 23/02/20.
//  Copyright © 2020 Amit Naskar. All rights reserved.
//

import Foundation

struct Story: Codable {
    
    let id: Int
    let title: String
    let url: String
    
}

extension Story {
    
    static func placeholder() -> Story {
        return Story(id: 0, title: "Not Available", url: "")
    }
    
}
