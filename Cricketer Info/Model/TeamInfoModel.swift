//
//  TeamInfoModel.swift
//  Cricketer Info
//
//  Created by Gokul on 29/01/23.
//

import Foundation
import UIKit

struct TeamInfoModel {
    var id: Int?
    var name: String?
    var color: UIColor?
    var playerInfo: [PlayerInfoModel]?
    
    init(id: Int? = nil, name: String? = nil, color: UIColor? = nil, playerInfo: [PlayerInfoModel]? = nil) {
        self.id = id
        self.name = name
        self.color = color
        self.playerInfo = playerInfo
    }
}
