//
//  HomePageViewController.swift
//  Cricketer Info
//
//  Created by Gokul on 05/02/23.
//

import UIKit

///Properties belong to an object, whereas variables do not. A variable can be declared without having to be associated with a particular class, or other object. A property must be associated with a particular object (i.e.: a class, enum, or struct)

class HomePageViewController: UIViewController {
    ///Lazy properties can be helpful in UI element creation in Swift because they allow you to delay the creation of the element until it's actually needed. This can improve app performance and reduce memory usage, especially if the UI element is complex or resource-intensive.
    ///For example, suppose you have a view controller that needs to display an image view, but the image itself isn't loaded until later in the view controller's lifecycle. You can declare the image view as a lazy property, so it's only created when it's actually needed
    lazy var listTableView: UITableView = {
        var tableView = UITableView()
        tableView.separatorStyle = .none
        tableView.showsVerticalScrollIndicator = true
        tableView.showsHorizontalScrollIndicator = true
        return tableView
    }()
    lazy var teamPickerView = UIPickerView()
    
    private var selectedTeam: String?
    private let cellId = "cellID"
    private var selectedTeamId: Int?
    
    private let teamDataManager = TeamDataManager()
    private var teamResponse: TeamResponse?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        teamDataManager.delegate = self
        setupTeamData()
        listTableView.register(PlayerInformationTableViewCell.self, forCellReuseIdentifier: cellId)
        setupUI()
        setDelegateAndDataSource()
    }
    
    func setupTeamData() {
        teamDataManager.fetchTeamData()
    }
    
    func getPlayerDataForCurrentIndexPath(_ indexPath: IndexPath) -> PlayerInfoModel? {
        filteredTeam?.removeAll()
        guard let teamResponse = teamResponse, let playerData = teamResponse.teams[indexPath.row]., indexPath.row < filteredTeam.count else {
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
        return teamResponse?.teams.count ?? 0
    }
}

// MARK: - UIPickerView Delegate
extension HomePageViewController: UIPickerViewDelegate {
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return teamResponse?.teams[row].name
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedTeam = teamResponse?.teams[row].name
        
    }
}

// MARK: - UITableViewDataSource
extension HomePageViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? PlayerInformationTableViewCell else {
            return UITableViewCell()
        }
        cell.selectionStyle = .none
        
//        let bgColor = selectedTeam?.color
//        listTableView.backgroundColor = bgColor
//        cell.backgroundColor = bgColor
//        cell.selectionStyle = .none
//
//        if let playerData = getPlayerDataForCurrentIndexPath(indexPath) {
//            cell.setupViewWith(data: playerData)
//        }
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

extension HomePageViewController: TeamDataManagerDelegate {
    func didUpdateTeamData(teamData: TeamResponse) {
        DispatchQueue.main.async {
            self.teamResponse = teamData
            self.teamPickerView.reloadAllComponents()
            self.listTableView.reloadData()
        }
    }
}
