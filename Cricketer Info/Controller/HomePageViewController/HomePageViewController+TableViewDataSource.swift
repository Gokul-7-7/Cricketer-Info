//
//  HomePageViewController+TableViewDataSource.swift
//  Cricketer Info
//
//  Created by Gokul on 23/02/23.
//

import UIKit

extension HomePageViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teamResponse?.teams[selectedTeamId ?? 0].players.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? PlayerInformationTableViewCell else {
            return UITableViewCell()
        }
        if let playerData = getPlayerDataForCurrentIndexPath(indexPath) {
            cell.setupViewWith(data: playerData)
        }
        cell.selectionStyle = .none
        return cell
    }
}