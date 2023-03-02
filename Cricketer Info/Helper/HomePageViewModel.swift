import Foundation

struct HomePageViewModel {
    
    let teamResponse: TeamResponse?
    ///This is called as dependency injection
    init (teamResponse: TeamResponse) {
        self.teamResponse = teamResponse
    }
    
    
}


//Dependency Injection:
