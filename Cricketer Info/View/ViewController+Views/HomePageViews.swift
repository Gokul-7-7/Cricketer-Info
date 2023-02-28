import UIKit

///Lazy properties can be helpful in UI element creation in Swift because they allow you to delay the creation of the element until it's actually needed. This can improve app performance and reduce memory usage, especially if the UI element is complex or resource-intensive.
///For example, suppose you have a view controller that needs to display an image view, but the image itself isn't loaded until later in the view controller's lifecycle. You can declare the image view as a lazy property, so it's only created when it's actually needed
class HomePageViews {
    lazy var listTableView: UITableView = {
        var tableView = UITableView()
        tableView.separatorStyle = .singleLine
        tableView.showsVerticalScrollIndicator = true
        tableView.showsHorizontalScrollIndicator = true
        return tableView
    }()
    lazy var teamPickerView = UIPickerView()
    lazy var activityIndicator = UIActivityIndicatorView()
}
