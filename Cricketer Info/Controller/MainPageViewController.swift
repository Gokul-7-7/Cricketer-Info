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
    var teamNames: [TeamName] = [.gujaratTitans, .mumbaiIndians, .punjabKings, .delhiCapitals, .rajasthanRoyal, .royalChallengersBangalore, .sunrisersHyderabad, .chennaiSuperKings, .lucknowSupergiants, .kolkataKnightRiders]
    var playerInfoModel: PlayerInfoModel?
    private var selectedTeam: TeamName?
    
    var allPlayerData = [
        PlayerInfoModel(name: "Hardik Pandya", role: .allRounder, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQdxptYP4Rtjyt-ZpSeeGwF571hOMj4MfKgZLea8BLxN5lFZnyOiZkUtdyimzAg8ud3uk&usqp=CAU", description: "Aggressive and good hitter", team: .gujaratTitans),
        PlayerInfoModel(name: "Abhinav Manohar", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/20589.png", description: "Abhinav Manohar is a good team player", team: .gujaratTitans),
        PlayerInfoModel(name: "David Miller", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/187.png", description: "Agressive and experienced batsman", team: .gujaratTitans),
        PlayerInfoModel(name: "Shubman Gill", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/3761.png", description: "Young and good hitter of the ball", team: .gujaratTitans),
        PlayerInfoModel(name: "Matthew Wade", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/290.png", description: "Overseas player", team: .gujaratTitans),
        PlayerInfoModel(name: "Wriddhiman Saha", role: .wicketKeeperBatsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/16.png", description: "Experienced wicketkeeper batsman", team: .gujaratTitans),
        PlayerInfoModel(name: "Mahendra Singh Dhoni", role: .wicketKeeperBatsman, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUHM-w8jN6zyNUvgzprrdVaZ1OWK1GXd1ZDw&usqp=CAU", description: "Legend of the cricket game, everyone loves Dhoni", team: .chennaiSuperKings)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.teamPickerView.dataSource = self
        teamPickerView.delegate = self
        playerTableView.delegate = self
        playerTableView.dataSource = self
        registerCustomCell()
        playerTableView.alpha = 0.5
        selectedTeam = .gujaratTitans
    }
    
   
}

extension MainPageViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return TeamName.allCases.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return teamNames[row].getTeamName()
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(row, component)
        selectedTeam = teamNames[row]
        self.playerTableView.backgroundColor = teamNames[row].getColor()
        self.playerTableView.reloadData()
    }
}

extension MainPageViewController: UITableViewDataSource, UITableViewDelegate {
    
    func registerCustomCell() {
        playerTableView.register(UINib.init(nibName: "PlayerInformationTableViewCell", bundle: Bundle.main), forCellReuseIdentifier: "PlayerInformationTableViewCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerInformationTableViewCell", for: indexPath) as? PlayerInformationTableViewCell else { return UITableViewCell() }
        let filteredTeam = allPlayerData.filter { $0.team == selectedTeam }
        
        cell.selectionStyle = .none
        return cell
    }
}
