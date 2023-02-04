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
    var name: TeamName?
    var playerInfo: [PlayerInfoModel]?
    
    init(id: Int? = nil, name: TeamName? = nil, playerInfo: [PlayerInfoModel]?) {
        self.id = id
        self.name = name
        self.playerInfo = playerInfo
    }
}
