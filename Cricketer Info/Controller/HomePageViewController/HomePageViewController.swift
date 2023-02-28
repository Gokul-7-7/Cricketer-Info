import UIKit

///Properties belong to an object, whereas variables do not. A variable can be declared without having to be associated with a particular class, or other object. A property must be associated with a particular object (i.e.: a class, enum, or struct)

class HomePageViewController: UIViewController {
    ///Instance that holds all the views for HomePage
    let homePageViews = HomePageViews()
    var selectedTeam: String?
    let cellId = "cellID"
    var selectedTeamId: Int?
    
    private let teamDataManager = TeamDataManager()
    var teamResponse: TeamResponse?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        teamDataManager.delegate = self
        setDelegateAndDataSource()
        setupTeamData()
        setupUI()
    }
    
    func setupTeamData() {
        homePageViews.activityIndicator.startAnimating()
        homePageViews.teamPickerView.isHidden = true
        teamDataManager.fetchTeamData()
    }
    
    func getPlayerDataForCurrentIndexPath(_ indexPath: IndexPath) -> Player? {
        guard let teamResponse = teamResponse, let selectedTeamId = selectedTeamId else {
            return nil
        }
        let playerData = teamResponse.teams[selectedTeamId].players[indexPath.row]
        return playerData
    }
}
