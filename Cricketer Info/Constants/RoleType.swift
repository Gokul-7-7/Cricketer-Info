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
    
    ///This is a computed property, because computed properties need a explicit type and the property doesn't have value initially but needs to run some code to calculate the value.
    var roleText: String {
        ///Every switch statement must be exhaustive. That is, every possible value of the type being considered must be matched by one of the switch cases. If it’s not appropriate to provide a case for every possible value, you can define a default case to cover any values that aren’t addressed explicitly. This default case is indicated by the default keyword, and must always appear last.
        ///A switch statement considers a value and compares it against several possible matching patterns. It then executes an appropriate block of code, based on the first pattern that matches successfully. A switch statement provides an alternative to the if statement for responding to multiple potential states.
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
