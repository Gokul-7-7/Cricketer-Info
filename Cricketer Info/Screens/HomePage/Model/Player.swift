import Foundation

struct Player: Decodable {
    let name, description: String
    let imageURL: String
    let role: Role
    let captain: Bool
}
