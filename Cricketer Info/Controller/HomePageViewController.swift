//
//  HomePageViewController.swift
//  Cricketer Info
//
//  Created by Gokul on 05/02/23.
//

import UIKit

class HomePageViewController: UIViewController {
    
    lazy var listTableView: UITableView = {
        var tableView = UITableView()
        tableView.separatorStyle = .none
        tableView.showsVerticalScrollIndicator = true
        tableView.showsHorizontalScrollIndicator = true
        return tableView
    }()
    lazy var teamPickerView = UIPickerView()
    
    var allPlayerData: [PlayerInfoModel]? = []
    var teamNames: [TeamName] = []
    private var selectedTeam: TeamName?
    private var filteredTeam: [PlayerInfoModel]?
    private let cellId = "cellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listTableView.register(PlayerInformationTableViewCell.self, forCellReuseIdentifier: cellId)
        setupTeamData()
        setupView()
        filteredTeam = allPlayerData?.filter { $0.team == selectedTeam }
    }
    
    private func setupTeamData() {
        setupChennaiSuperKingsData()
        setupGujratTitansData()
        setupDelhiCapitalsData()
        seupKolkataKnightRidersData()
        seupLucknowSuperGiantsData()
        seupMumbaiIndiansData()
        seupPunjabKingsData()
        seupRajasthanRoyalsData()
        seupRoyalChallengersBangaloreData()
        setupSunrisersHyderabadData()
        selectedTeam = teamNames[0]
    }
    
    func getPlayerDataForCurrentIndexPath(_ indexPath: IndexPath) -> PlayerInfoModel? {
        filteredTeam?.removeAll()
        filteredTeam = allPlayerData?.filter { $0.team == selectedTeam }
        guard let filteredTeam = filteredTeam, indexPath.row < filteredTeam.count else {
            return nil
        }
        let playerData = filteredTeam[indexPath.row]
        return playerData
    }
}

// MARK: - UIPickerView DataSource
extension HomePageViewController: UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return teamNames.count
    }
}

// MARK: - UIPickerView Delegate
extension HomePageViewController: UIPickerViewDelegate {
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return teamNames[row].rawValue
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        filteredTeam?.removeAll()
        selectedTeam = teamNames[row]
        filteredTeam = allPlayerData?.filter { $0.team == selectedTeam }
        listTableView.backgroundColor = teamNames[row].color
        listTableView.scrollsToTop = true
        listTableView.reloadData()
    }
}

// MARK: - UITableViewDataSource
extension HomePageViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredTeam?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? PlayerInformationTableViewCell else {
            return UITableViewCell()
        }
        let bgColor = selectedTeam?.color
        listTableView.backgroundColor = bgColor
        cell.backgroundColor = bgColor
        cell.selectionStyle = .none
        
        if let playerData = getPlayerDataForCurrentIndexPath(indexPath) {
            cell.setupViewWith(data: playerData)
        }
        return cell
    }
}

// MARK: - UITableView Delegate
extension HomePageViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let playerData = filteredTeam?[indexPath.row] else {
            return
        }
        let coordinator = MainCoordinator(navigationController: navigationController ?? UINavigationController())
        coordinator.showPlayerDetail(playerData: playerData, isCaptain: indexPath.row == 0 && playerData.team != .sunrisersHyderabad)
    }
}
