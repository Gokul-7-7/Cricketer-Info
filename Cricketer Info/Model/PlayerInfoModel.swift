//
//  PlayerInfoModel.swift
//  Cricketer Info
//
//  Created by Gokul on 29/01/23.
//

import Foundation

///Why struct over class here?
///structs are value types whereas classes are reference types. When you copy a struct, you end up with two unique copies of the data. When you copy a class, you end up with two references to one instance of the data. It's a crucial difference, and it affects your choice between classes or structs.
///The additional capabilities that classes support come at the cost of increased complexity. As a general guideline, prefer structures because they’re easier to reason about, and use classes when they’re appropriate or necessary. In practice, this means most of the custom data types you define will be structures and enumerations.
// ->Thread Safety
// ->Optimization
// ->Boilerplate code
//*     Default to using a struct. Structs are more optimizing than classes as well as are thread-safe. Because of this, structs automatically eliminate a whole class of errors.
//*         Use classes when the code needs to be used in Objective-C. Swift structs don’t exist in Objective-C.
//*         Use classes when controlling identity. This is a common case with is local databases, file handling, or network connections.
//*         Use structs when you don’t control identity. A common case for this is when modeling data from a server. If the object has an id, you don’t control how that id was generated.
//*         While structs cannot inherit from other structs, they can inherit protocols. Use protocol inheritance when possible so that structs can be used.

struct PlayerInfoModel {
    var name: String
    var role: RoleType
    var image: String
    var description: String
    var team: TeamName
}
///Why did i remove optional from every property?
