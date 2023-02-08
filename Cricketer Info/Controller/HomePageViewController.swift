//
//  HomePageViewController.swift
//  Cricketer Info
//
//  Created by Gokul on 05/02/23.
//

import UIKit

class HomePageViewController: UIViewController {
    
    var listTableView: UITableView!
    var teamPickerView = UIPickerView()
    
    var allPlayerData: [PlayerInfoModel]? = []
    var teamNames: [TeamName] = []
    private var selectedTeam: TeamName?
    private var filteredTeam: [PlayerInfoModel]?
    let cellId = "cellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTeamData()
        setupView()
        // Do any additional setup after loading the view.
    }
    
    private func setupTeamData() {
//        setupChennaiSuperKingsData()
//        setupGujratTitansData()
//        setupDelhiCapitalsData()
//        seupKolkataKnightRidersData()
//        seupLucknowSuperGiantsData()
//        seupMumbaiIndiansData()
//        seupPunjabKingsData()
//        seupRajasthanRoyalsData()
//        seupRoyalChallengersBangaloreData()
//        setupSunrisersHyderabadData()
//        selectedTeam = teamNames[0]
    }
    
    private func setupView() {
        let barHeight: CGFloat = self.view.window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
        let displayWidth: CGFloat = self.view.frame.width
        let displayHeight: CGFloat = self.view.frame.height
        
        listTableView = UITableView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight - barHeight))
        listTableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
        listTableView.dataSource = self
        listTableView.delegate = self
        self.view.addSubview(listTableView)
    }

}
extension HomePageViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredTeam?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
            cell.textLabel?.text = "hello"
            return cell
    }
    
    
}
