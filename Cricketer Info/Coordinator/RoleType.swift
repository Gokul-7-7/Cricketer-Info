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
    
}
