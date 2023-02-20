//
//  HomePageViewController.swift
//  Cricketer Info
//
//  Created by Gokul on 05/02/23.
//

import UIKit

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
    
    var allPlayerData: [PlayerInfoModel]? = []
    var teamNames: [TeamName] = []
    private var selectedTeam: TeamName?
    private var filteredTeam: [PlayerInfoModel]?
    private let cellId = "cellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        jsonLoader()
        listTableView.register(PlayerInformationTableViewCell.self, forCellReuseIdentifier: cellId)
        setupTeamData()
        setupUI()
        setDelegateAndDataSource()
        filteredTeam = allPlayerData?.filter { $0.team == selectedTeam }
    }
    
    func jsonLoader() {
        let fileName = "TeamPlayerData"
        let fileType = "geojson"
        
        if let path = Bundle.main.url(forResource: fileName, withExtension: fileType) {
            do {
                //let data = try Data(contentsOf: URL(filePath: path), options: .mappedIfSafe)
                //let jsonObject = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                print(path)
            } catch {
                print("Couldn't load data from JSON")
            }
        } else {
            print("abc")
        }
        
    }
    
    func loadJSONFromFile() {
        // Get the file path for the JSON file
        guard let filePath = Bundle.main.path(forResource: "TeamData", ofType: "json") else {
            print("Error: JSON file not found")
            return
        }
        
        do {
            // Load the contents of the JSON file into a Data object
            let data = try Data(contentsOf: URL(fileURLWithPath: filePath))
            
            // Parse the JSON data into an array of dictionaries
            let jsonArray = try JSONSerialization.jsonObject(with: data, options: []) as? [[String: Any]]
            
            // Check if parsing was successful
            guard let teams = jsonArray else {
                print("Error: Failed to parse JSON data")
                return
            }
            
            // Use the teams array as needed
            print("Loaded teams:", teams)
            
        } catch {
            print("Error: Failed to load or parse JSON file:", error.localizedDescription)
        }
    }

    
    func setupTeamData() {
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
