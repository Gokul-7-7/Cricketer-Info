//
//  RoleType.swift
//  Cricketer Info
//
//  Created by Gokul on 29/01/23.
//

import Foundation

enum RoleType: String {
    case batsman = "🏏"
    case allRounder = "🏏🎾"
    case bowler = "🎾"
    case wicketKeeperBatsman = "🧤🏏"
    
    var roleText: String {
        switch self {
        case .batsman:
            return "Batsman"
        case .allRounder:
            return "All rounder"
        case .bowler:
            return "Bowler"
        case .wicketKeeperBatsman:
            return "Wicket Keeper Batsman"
        }
    }
    ///In general, properties are better suited for representing static data, while functions are better suited for representing dynamic behavior. However, this is not a hard and fast rule, and there may be cases where a property is used to represent a calculated value or a function is used to represent a static behavior.
}
