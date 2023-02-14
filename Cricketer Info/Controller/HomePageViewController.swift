//
//  HomePageViewController.swift
//  Cricketer Info
//
//  Created by Gokul on 05/02/23.
//

import UIKit

class HomePageViewController: UIViewController {
    
    private var listTableView: UITableView = {
        var tableView = UITableView()
        tableView.separatorStyle = .none
        tableView.showsVerticalScrollIndicator = true
        tableView.showsHorizontalScrollIndicator = true
        return tableView
    }()
    private var teamPickerView = UIPickerView()
    
    var allPlayerData: [PlayerInfoModel]? = []
    var teamNames: [TeamName] = []
    private var selectedTeam: TeamName?
    private var filteredTeam: [PlayerInfoModel]?
    private let cellId = "cellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listTableView.register(PlayerInformationTableViewCell.self, forCellReuseIdentifier: cellId)
        setupPickerViewConstraint()
        setupTableView()
        setupTeamData()
        setupView()
        self.view.backgroundColor = .white
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
    
    private func setupView() {
        listTableView.dataSource = self
        listTableView.delegate = self
        teamPickerView.delegate = self
        teamPickerView.dataSource = self
        title = "Team Info"
    }
    
    private func setupPickerViewConstraint() {
        self.view.addSubview(teamPickerView)
        teamPickerView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: nil, height: 100, enableInsets: false)
    }
    
    private func setupTableView() {
        self.view.addSubview(listTableView)
        listTableView.anchor(top: teamPickerView.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: view.bottomAnchor, trailing: view.safeAreaLayoutGuide.trailingAnchor, paddingTop: 16, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: nil, height: nil, enableInsets: false)
    }
}

extension HomePageViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return teamNames.count
    }
    
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

extension HomePageViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredTeam?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var tableViewCell = UITableViewCell()
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? PlayerInformationTableViewCell {
            filteredTeam?.removeAll()
            filteredTeam = allPlayerData?.filter { $0.team == selectedTeam }
            if let filteredTeam = filteredTeam {
                if indexPath.row == 0, let team = filteredTeam[0].team, team != .sunrisersHyderabad {
                    cell.isCaptain = true
                } else {
                    cell.isCaptain = false
                }
                cell.setupViewWith(data: filteredTeam[indexPath.row])
            }
            let bgColor = selectedTeam?.color
            listTableView.backgroundColor = bgColor
            cell.backgroundColor = bgColor
            cell.selectionStyle = .none
            tableViewCell = cell
        }
        return tableViewCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = PlayerDetailViewController()
        detailVC.playerData = filteredTeam?[indexPath.row]
        if indexPath.row == 0, let team = filteredTeam?[0].team, team != .sunrisersHyderabad{
            detailVC.isCaptain = true
        }
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
}

