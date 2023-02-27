//
//  Team.swift
//  Cricketer Info
//
//  Created by Gokul on 21/02/23.
//

import Foundation

struct Team: Decodable {
    let id: Int
    let name: String
    let players: [Player]
}
///Properties here can be optional to avoid nil exceptions
///Have properites as nil, if we are not sure if the property will have a value inside it or not
