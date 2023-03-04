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
        //capture list
        viewModel.eventHandler = { [weak self]event in
            guard let self else { return }
            ///Why UI related tasks in main thread?
            ///Because all the data fetching happens in the background, the UI related tasks has to happen in the main thread.
            switch event {
            case .loading:
                DispatchQueue.main.async {
                    self.homePageViews.activityIndicator.startAnimating()
                    self.homePageViews.teamPickerView.isHidden = true
                    self.homePageViews.listTableView.isHidden = true
                }
            case .stopLoading:
                DispatchQueue.main.async {
                    self.homePageViews.activityIndicator.stopAnimating()
                    self.homePageViews.teamPickerView.isHidden = false
                    self.homePageViews.listTableView.isHidden = false
                }
            case .dataLoaded:
                DispatchQueue.main.async {
                    self.reloadInputViews()
                    self.homePageViews.teamPickerView.reloadAllComponents()
                    self.selectedTeamId = self.viewModel.teamResponse?.teams[0].id
                    self.selectedTeam = self.viewModel.teamResponse?.teams[0].name
                    self.homePageViews.listTableView.reloadData()
                }
            case .error(let error):
                print(error ?? "Error in calling the api")
            }
        }
    }
}
///capturelist
///When an object or value is getting referenced in an escaping closure it gets captured inside the scope for it to get used when the closure is executed.
///When an object get's captured (here 'self') it creates a strong reference which will make it retain and cause memory leaks and storng reference cycles or retain cycles
///Using [weak self] capture list, we capture self as a weak reference which will break our retain cycles
///While using self, we retaining it for as long as the closure is in memory.
///Using [weak self] is only required in situations where capturing self strongly would end up causing a retain cycle, for example when self is being captured within a closure that’s also ultimately retained by that same object.
