///In mvvm view controllers should only have view logic
import UIKit

///Properties belong to an object, whereas variables do not. A variable can be declared without having to be associated with a particular class, or other object. A property must be associated with a particular object (i.e.: a class, enum, or struct)

class HomePageViewController: UIViewController {
    ///Instance that holds all the views for HomePage
    lazy var homePageViews = HomePageViews()
    var selectedTeam: String?
    let cellId = "cellID"
    var selectedTeamId: Int?
    
    var viewModel = HomePageViewModel()
    
    //private let teamDataManager = TeamDataManager()
    var teamResponse: TeamResponse?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configuration()
    }
    
    func getPlayerDataForCurrentIndexPath(_ indexPath: IndexPath) -> Player? {
        guard let teamResponse = viewModel.teamResponse, let selectedTeamId = selectedTeamId else {
            return nil
        }
        let playerData = teamResponse.teams[selectedTeamId].players[indexPath.row]
        return playerData
    }
}

extension HomePageViewController {
    func configuration() {
        initViewModel()
        observeEvent()
        setupUI()
        setDelegateAndDataSource()
    }
    func initViewModel() {
        viewModel.fetchTeamResponse()
    }
    
    ///This will observe event of Data binding - communication
    func observeEvent() {
        viewModel.eventHandler = { [weak self]event in
            guard let self else { return }
            ///Why UI related tasks in main thread?
            ///Because all the data fetching happens in the background, the UI related tasks has to happen in the main thread.
            switch event {
            case .loading:
                DispatchQueue.main.async {
                    self.homePageViews.activityIndicator.startAnimating()
                }
            case .stopLoading:
                DispatchQueue.main.async {
                    self.homePageViews.activityIndicator.stopAnimating()
                }
            case .dataLoaded:
                DispatchQueue.main.async {
                    self.reloadInputViews()
                    self.homePageViews.teamPickerView.reloadAllComponents()
                    self.homePageViews.listTableView.reloadData()
                }
            case .error(let error):
                print(error ?? "Error")
            }
        }
    }
}
