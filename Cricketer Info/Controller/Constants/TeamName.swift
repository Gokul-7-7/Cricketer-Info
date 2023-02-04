//
//  TeamNames.swift
//  Cricketer Info
//
//  Created by Gokul on 01/02/23.
//

import Foundation
import UIKit

enum TeamName: String, CaseIterable {
    case gujaratTitans 
    case mumbaiIndians
    case punjabKings
    case delhiCapitals
    case rajasthanRoyal
    case royalChallengersBangalore
    case sunrisersHyderabad
    case chennaiSuperKings
    case lucknowSupergiants
    case kolkataKnightRiders
    
    func getColor() -> UIColor {
        switch self {
        case .gujaratTitans:
            return .cyan
        case .mumbaiIndians:
            return .systemBlue
        case .punjabKings:
            return .systemPink
        case .delhiCapitals:
            return .brown
        case .rajasthanRoyal:
            return .systemIndigo
        case .royalChallengersBangalore:
            return .red
        case .sunrisersHyderabad:
            return .orange
        case .chennaiSuperKings:
            return .yellow
        case .lucknowSupergiants:
            return .cyan
        case .kolkataKnightRiders:
            return .magenta
        }
    }
    
    func getTeamName() -> String {
        switch self {
        case .gujaratTitans:
            return "Gujrat Titans"
        case .mumbaiIndians:
            return "Mumbai Indians"
        case .punjabKings:
            return "Punjab Kings"
        case .delhiCapitals:
            return "Delhi Capitals"
        case .rajasthanRoyal:
            return "Rajasthan Royals"
        case .royalChallengersBangalore:
            return "Rajasthan Royals"
        case .sunrisersHyderabad:
            return "Sunrisers Hyderabad"
        case .chennaiSuperKings:
            return "Chennai Super Kings"
        case .lucknowSupergiants:
            return "Lucknow Supergiants"
        case .kolkataKnightRiders:
            return "Kolkata Knight Riders"
        }
    }
}
