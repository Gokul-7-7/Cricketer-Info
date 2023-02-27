//
//  HomePageViewModel.swift
//  Cricketer Info
//
//  Created by Gokul on 27/02/23.
//

import Foundation

struct HomePageViewModel {
    
    let teamResponse: TeamResponse?
    ///This is called as dependency injection
    init (teamResponse: TeamResponse) {
        self.teamResponse = teamResponse
    }
    
    
}
