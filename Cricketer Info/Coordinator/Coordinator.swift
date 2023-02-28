import UIKit

protocol Coordinator: AnyObject {
    var navigationController: UINavigationController { get set }
    func showPlayerDetail(playerData: Player)
}

///AnyObject - The protocol to which all class types implicitly conform.
///         Structs cannot conform to protocol that is
///         It refers to any instance of a class. It’s useful when you are working with reference type only. It’s equivalent to ‘id’ in Objective-C.
///         AnyObject can represent an instance of any class type.
///
//Any
///Any can represent an instance of any (class, struct, enum) type at all, including function types. In simple language we can say that Any can deal with both reference type as well as value type object.
// Any -> AnyObject -> NSObject

///Structs cannot conform to protocols of special type AnyObject because reference types can only conform to such protocols
///While protocols marked with Any, both value types and reference types can conform to the protocol with any special type
