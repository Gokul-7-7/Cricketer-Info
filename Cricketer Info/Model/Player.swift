//
//  Player.swift
//  Cricketer Info
//
//  Created by Gokul on 21/02/23.
//

import Foundation

struct Player: Decodable {
    let name, description: String
    let imageURL: String
    let role: Role
    let captain: Bool
}
