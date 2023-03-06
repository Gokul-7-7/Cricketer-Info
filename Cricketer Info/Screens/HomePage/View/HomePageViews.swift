import UIKit

///Lazy properties can be helpful in UI element creation in Swift because they allow you to delay the creation of the element until it's actually needed. This can improve app performance and reduce memory usage, especially if the UI element is complex or resource-intensive.
class HomePageViews {
    lazy var listTableView: UITableView = {
        var tableView = UITableView()
        tableView.separatorStyle = .singleLine
        tableView.showsVerticalScrollIndicator = true
        tableView.showsHorizontalScrollIndicator = true
        tableView.isHidden = true
        return tableView
    }()
    
    lazy var teamPickerView : UIPickerView = {
        let pickerView = UIPickerView()
        pickerView.isHidden = true
        return pickerView
    }()
    
    lazy var activityIndicator: UIActivityIndicatorView = {
        return UIActivityIndicatorView()
    }()
}
///why lazy properties should be a computed property?
///Because lazy properties get assigned with values only when used, they need to be computed with the newest and up to date values.
