//
//  ViewController.swift
//  Cricketer Info
//
//  Created by Gokul on 29/01/23.
//

import UIKit

class MainPageViewController: UIViewController {
    
    @IBOutlet var teamPickerView: UIPickerView!
    @IBOutlet var playerTableView: UITableView!
    
    var allPlayerData: [PlayerInfoModel]? = []
    var teamNames: [TeamName] = []
    private var selectedTeam: TeamName?
    private var filteredTeam: [PlayerInfoModel]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTeamData()
        filteredTeam = allPlayerData?.filter { $0.team == selectedTeam }
        registerCustomCell()
        setupView()
    }
    
    func setupTeamData() {
        setupChennaiSuperKingsData()
        setupGujratTitansData()
        setupDelhiCapitalsData()
        seupKolkataKnightRidersData()
        seupLucknowSuperGiantsData()
        seupMumbaiIndiansData()
        selectedTeam = teamNames[0]
    }
    
    func setupView() {
        teamPickerView.dataSource = self
        teamPickerView.delegate = self
        playerTableView.delegate = self
        playerTableView.dataSource = self
        playerTableView.clipsToBounds = true
        playerTableView.layer.cornerRadius = 5
    }
    
}

extension MainPageViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return teamNames.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return teamNames[row].getTeamName()
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(row, component)
        filteredTeam?.removeAll()
        selectedTeam = teamNames[row]
        filteredTeam = allPlayerData?.filter { $0.team == selectedTeam }
        self.playerTableView.backgroundColor = teamNames[row].getColor()
        self.playerTableView.reloadData()
    }
}

extension MainPageViewController: UITableViewDataSource, UITableViewDelegate {
    
    func registerCustomCell() {
        playerTableView.register(UINib.init(nibName: "PlayerInformationTableViewCell", bundle: Bundle.main), forCellReuseIdentifier: "PlayerInformationTableViewCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredTeam?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerInformationTableViewCell", for: indexPath) as? PlayerInformationTableViewCell else { return UITableViewCell() }
        filteredTeam?.removeAll()
        filteredTeam = allPlayerData?.filter { $0.team == selectedTeam }
        if let filteredTeam = filteredTeam {
            var isCaptain = false
            if indexPath.row == 0 {
                isCaptain = true
            }
            cell.setupViewWith(data: filteredTeam[indexPath.row], isCaptain: isCaptain)
        }
        let bgColor = selectedTeam?.getColor()
        playerTableView.backgroundColor = bgColor
        cell.backgroundColor = bgColor
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let detailVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "PlayerDetailViewController") as? PlayerDetailViewController {
            detailVC.playerData = filteredTeam?[indexPath.row]
            if indexPath.row == 0 {
                detailVC.isCaptain = true
            }
            self.navigationController?.pushViewController(detailVC, animated: true)
        }
    }
}
