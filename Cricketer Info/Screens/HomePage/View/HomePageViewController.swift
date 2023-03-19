///In mvvm view controllers should only have view logic
import UIKit

///Properties belong to an object, whereas variables do not. A variable can be declared without having to be associated with a particular class, or other object. A property must be associated with a particular object (i.e.: a class, enum, or struct)

class HomePageViewController: UIViewController {
    ///Instance that holds all the views for HomePage
    lazy var homePageViews = HomePageViews()
    var selectedTeam: String?
    let cellId = "cellID"
    var selectedTeamId: Int?
    var viewModel: HomePageViewModel
    
    init(viewModel: HomePageViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
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

