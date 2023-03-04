import UIKit
///AnyObject -
///Only reference types implicitly conforms
///class types can conform to protocols of AnyObject type
///Any-
///Struct, class, enum and all types can confrom to protocols of Any type.
///Any can deal with both reference types as well as value types.
protocol Coordinator: AnyObject {
    var navigationController: UINavigationController { get set }
    func showPlayerDetail(playerData: Player)
}

