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
    
    var color: UIColor {
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
//Computed properties in Swift provide a way to access or modify the value of a property through a function, instead of directly accessing or modifying the value of the property itself. Here are some pros and cons of using computed properties in Swift:
//
//Pros:
//
//Encapsulation: Computed properties allow you to encapsulate the logic for calculating or deriving a property’s value, making your code more modular and easier to maintain.
//
//Composability: Computed properties can be composed with other properties or functions, allowing you to build complex logic on top of simple building blocks.
//
//Flexibility: Computed properties can be used to implement properties that would be difficult or impossible to implement with stored properties alone.
//
//Efficiency: Computed properties can be optimized by the compiler, so that they perform as well as or better than stored properties.
//
//Cons:
//
//Overhead: Computed properties require more computational overhead than stored properties, because the getter and/or setter function must be executed every time the property is accessed or modified.
//
//Side effects: Computed properties can have side effects that are not immediately apparent, because the getter and/or setter function may perform additional operations beyond simply returning or setting the value of the property.
//
//Complexity: Computed properties can make your code more complex and harder to read and understand, especially if they are composed with other properties or functions.
//
//Limitations: Computed properties have some limitations, such as not being able to be marked as “lazy” or “weak”.
//
//
//
