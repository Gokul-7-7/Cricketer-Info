import Foundation

final class HomePageViewModel {
    
    var teamResponse: TeamResponse?
    ///Data binding closure:
    ///data binding using closure method
    var eventHandler: ((_ event: Event) -> ())?
    
    func fetchTeamResponse() {
        ApiManager.shared.fetchTeamData { response in
            switch response {
            case .success(let teamResponse):
                self.teamResponse = teamResponse
                print(teamResponse)
            case .failure(let failure):
                print(failure)
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
