//
//  Role.swift
//  Cricketer Info
//
//  Created by Gokul on 21/02/23.
//

///Summary - Codable
///
///A type that can convert itself into and out of an external representation.
///Declaration
///
///typealias Codable = Decodable & Encodable
///Discussion
///
///Codable is a type alias for the Encodable and Decodable protocols. When you use Codable as a type or a generic constraint, it matches any type that conforms to both protocols.
///
///Decodable:
 /// Creates a new instance by decoding from the given decoder.
///
/// This initializer throws an error if reading from the decoder fails, or
/// if the data read is corrupted or otherwise invalid.
///
/// - Parameter decoder: The decoder to read data from.
///
/// Encodable:
/// Encodes this value into the given encoder.
///
/// If the value fails to encode anything, `encoder` will encode an empty
/// keyed container in its place.
///
/// This function throws an error if any values are invalid for the given
/// encoder's format.
///
/// - Parameter encoder: The encoder to write data to.

enum Role: String, Decodable {
    case allRounder = "allRounder"
    case batsman = "batsman"
    case bowler = "bowler"
    case wicketKeeperBatsman = "wicketKeeperBatsman"
    
    ///This is a computed property, because computed properties need a explicit type and the property doesn't have value initially but needs to run some code to calculate the value.
    var getDisplayTextAsEmojis: String {
        ///Every switch statement must be exhaustive. That is, every possible value of the type being considered must be matched by one of the switch cases. If it’s not appropriate to provide a case for every possible value, you can define a default case to cover any values that aren’t addressed explicitly. This default case is indicated by the default keyword, and must always appear last.
        ///A switch statement considers a value and compares it against several possible matching patterns. It then executes an appropriate block of code, based on the first pattern that matches successfully. A switch statement provides an alternative to the if statement for responding to multiple potential states.
        switch self {
        case .allRounder:
            return "🏏🎾"
        case .batsman:
            return "🏏"
        case .bowler:
            return "🎾"
        case .wicketKeeperBatsman:
            return "🧤🏏"
        }
    }
}
//Why properties to functions:
///In general, properties are better suited for representing static data, while functions are better suited for representing dynamic behavior. However, this is not a hard and fast rule, and there may be cases where a property is used to represent a calculated value or a function is used to represent a static behavior.
