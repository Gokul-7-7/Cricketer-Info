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
    lazy var activityIndicator = UIActivityIndicatorView()
    
    private var selectedTeam: String?
    let cellId = "cellID"
    private var selectedTeamId: Int?
    
    private let teamDataManager = TeamDataManager()
    private var teamResponse: TeamResponse?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        teamDataManager.delegate = self
        setDelegateAndDataSource()
        setupTeamData()
        setupUI()
    }
    
    func setupTeamData() {
        activityIndicator.startAnimating()
        teamPickerView.isHidden = true
        teamDataManager.fetchTeamData()
        selectedTeamId = 0
        selectedTeam = teamResponse?.teams[0].name
    }
    
    func getPlayerDataForCurrentIndexPath(_ indexPath: IndexPath) -> Player? {
        guard let teamResponse = teamResponse, let selectedTeamId = selectedTeamId else {
            return nil
        }
        let playerData = teamResponse.teams[selectedTeamId].players[indexPath.row]
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
        selectedTeamId = teamResponse?.teams[row].id
        listTableView.reloadData()
    }
}

// MARK: - UITableViewDataSource
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

// MARK: - UITableView Delegate
extension HomePageViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let teamResponse = teamResponse, let selectedTeamId = selectedTeamId else {
            return
        }
        let playerData = teamResponse.teams[selectedTeamId].players[indexPath.row]
        let coordinator = MainCoordinator(navigationController: navigationController ?? UINavigationController())
        coordinator.showPlayerDetail(playerData: playerData)
    }
}

extension HomePageViewController: TeamDataManagerDelegate {
    func didUpdateTeamData(teamData: TeamResponse) {
        DispatchQueue.main.async {
            self.teamResponse = teamData
            self.teamPickerView.reloadAllComponents()
            self.listTableView.reloadData()
            self.activityIndicator.stopAnimating()
            self.teamPickerView.isHidden = false
        }
    }
}
