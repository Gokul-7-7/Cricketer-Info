///In ViewModel we shouldn't import UIKit as ViewModel should only hold business logic and not anything related to view logic.
import Foundation

enum Event {
    case loading
    case stopLoading
    case dataLoaded
    case error(Error?)
}

protocol HomePageViewModelProtocol: AnyObject {
    typealias State = (Event) -> Void

    var eventHandler: State? { get set }
    
    func onViewDidLoad()
    func didSelectItem(selectedTeamId: Int, at: IndexPath)
}

final class HomePageViewModel: HomePageViewModelProtocol {
    ///Data binding closure:
    ///data binding using closure method
    var eventHandler: State?
    var teamResponse: TeamResponse?
    private let actionHandler: HomePageActionHandler

    init(teamResponse: TeamResponse? = nil, actionHandler: HomePageActionHandler) {
        self.teamResponse = teamResponse
        self.actionHandler = actionHandler
    }
    
    func onViewDidLoad() {
        fetchTeamResponse()
    }
}

extension HomePageViewModel {
    func didSelectItem(selectedTeamId: Int, at: IndexPath) {
        guard let teamResponse else { return }
        let input = teamResponse.teams[selectedTeamId].players[at.row]
        self.actionHandler.openDetailView(with: input)
    }
}

extension HomePageViewModel {
    func fetchTeamResponse() {
        eventHandler?(.loading)
        ApiManager.shared.fetchTeamData { response in
            self.eventHandler?(.stopLoading)
            switch response {
            case .success(let teamResponse):
                self.teamResponse = teamResponse
                self.eventHandler?(.dataLoaded)
            case .failure(let error):
                self.eventHandler?(.error(error))
            }
        }
    }
}
