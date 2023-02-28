///Any:
///Any can represent an instance of any (class, struct, enum) type at all, including function types. In simple language we can say that Any can deal with both reference type as well as value type object.

///AnyObject:
///It refers to any instance of a class. It’s useful when you are working with reference type only. It’s equivalent to ‘id’ in Objective-C.
///AnyObject can represent an instance of any class type.

protocol TeamDataManagerDelegate: AnyObject {
    func didUpdateTeamData(teamData: TeamResponse)
}
