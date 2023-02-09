//
//  HomePageViewController.swift
//  Cricketer Info
//
//  Created by Gokul on 05/02/23.
//

import UIKit

class HomePageViewController: UIViewController {
    
    var listTableView = UITableView()
    var teamPickerView = UIPickerView()
    
    var allPlayerData: [PlayerInfoModel]? = []
    var teamNames: [TeamName] = []
    private var selectedTeam: TeamName?
    private var filteredTeam: [PlayerInfoModel]?
    let cellId = "cellID"
    var safeArea: UILayoutGuide!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        safeArea = view.layoutMarginsGuide
        setupPickerViewConstraint()
        setupTableView()
        setupTeamData()
        setupView()
        self.view.backgroundColor = .white
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
    }
    
    func setupPickerViewConstraint() {
        self.view.addSubview(teamPickerView)
        teamPickerView.translatesAutoresizingMaskIntoConstraints = false
        teamPickerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 4).isActive = true
        teamPickerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        teamPickerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        teamPickerView.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    func setupTableView() {
        self.view.addSubview(listTableView)
        listTableView.separatorStyle = .singleLine
        listTableView.separatorColor = .gray
        listTableView.translatesAutoresizingMaskIntoConstraints = false
        listTableView.topAnchor.constraint(equalTo: teamPickerView.bottomAnchor).isActive = true
        listTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        listTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        listTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
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
        return teamNames[row].getTeamName()
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        filteredTeam?.removeAll()
        selectedTeam = teamNames[row]
        filteredTeam = allPlayerData?.filter { $0.team == selectedTeam }
        self.listTableView.backgroundColor = teamNames[row].getColor()
        self.listTableView.reloadData()
        let indexPath = IndexPath(row: 0, section: 0)
        self.listTableView.scrollToRow(at: indexPath, at: .top, animated: false)
    }
}

extension HomePageViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("amuthhiiitaan daaa")
    }
    
}
