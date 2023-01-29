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
    
    var teamInfoModel: TeamInfoModel?
    var playerInfoModel: PlayerInfoModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        teamPickerView.delegate = self
        playerTableView.delegate = self
    }

    func setupTeamInfo() {
        let playerOne = PlayerInfoModel(id: <#T##Int?#>, name: <#T##String?#>, team: <#T##TeamInfoModel?#>)
    }
}

extension MainPageViewController: UIPickerViewDelegate {
    
}

extension MainPageViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}
