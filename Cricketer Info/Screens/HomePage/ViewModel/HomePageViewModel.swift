///In ViewModel we shouldn't import UIKit as ViewModel should only hold business logic and not anything related to view logic.
import Foundation

final class HomePageViewModel {
    
    var teamResponse: TeamResponse?
    ///Data binding closure:
    ///data binding using closure method
    var eventHandler: ((_ event: Event) -> ())?
    
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

extension HomePageViewModel {
    
    enum Event {
        case loading
        case stopLoading
        case dataLoaded
        case error(Error?)
    }
}
