//
//  ListItem.swift
//  Swift_30_Projects_FacebookMe
//
//  Created by yc on 2023/05/01.
//

import Foundation

struct ListItem: Hashable {
    var id: String = UUID().uuidString
    var imageName: String?
    var title: String
    
    enum Style {
        case `default`
        case more
    }
    
    static let mocks1: [Self] = [
        ListItem(imageName: "fb_friends", title: "Friends"),
        ListItem(imageName: "fb_calendar", title: "Events"),
        ListItem(imageName: "fb_groups", title: "Groups"),
        ListItem(imageName: "fb_education", title: "CMU"),
        ListItem(imageName: "fb_house", title: "Town Hall"),
        ListItem(imageName: "fb_games", title: "Instant Games"),
        ListItem(imageName: nil, title: "See More...")
    ]
    
    static let mocks2: [Self] = [
        ListItem(imageName: "fb_gear", title: "Settings"),
        ListItem(imageName: "fb_lock", title: "Privacy Shortcuts"),
        ListItem(imageName: "fb_question", title: "Help and Support")
    ]
}
