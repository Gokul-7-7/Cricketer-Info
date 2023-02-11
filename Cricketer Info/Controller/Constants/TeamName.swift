//
//  TeamNames.swift
//  Cricketer Info
//
//  Created by Gokul on 01/02/23.
//

import Foundation
import UIKit

enum TeamName: String, CaseIterable {
    case gujaratTitans = "Gujrat Titans"
    case mumbaiIndians = "Mumbai Indians"
    case punjabKings = "Punjab Kings"
    case delhiCapitals = "Delhi Capitals"
    case rajasthanRoyal = "Rajasthan Royals"
    case royalChallengersBangalore = "Royal Challengers Bangalore"
    case sunrisersHyderabad = "Sunrisers Hyderabad"
    case chennaiSuperKings = "Chennai Super Kings"
    case lucknowSupergiants = "Lucknow Supergiants"
    case kolkataKnightRiders = "Kolkata Knight Riders"
    
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
}
