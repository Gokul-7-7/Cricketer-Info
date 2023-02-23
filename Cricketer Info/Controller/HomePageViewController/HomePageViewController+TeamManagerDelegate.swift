//
//  HomePageViewController+TeamManagerDelegate.swift
//  Cricketer Info
//
//  Created by Gokul on 23/02/23.
//

import Foundation

extension HomePageViewController: TeamDataManagerDelegate {
    func didUpdateTeamData(teamData: TeamResponse) {
        DispatchQueue.main.async {
            self.teamResponse = teamData
            self.homePageViews.teamPickerView.reloadAllComponents()
            self.homePageViews.listTableView.reloadData()
            self.homePageViews.activityIndicator.stopAnimating()
            self.homePageViews.teamPickerView.isHidden = false
            self.selectedTeamId = self.teamResponse?.teams[0].id
            self.selectedTeam = self.teamResponse?.teams[0].name
        }
    }
}
