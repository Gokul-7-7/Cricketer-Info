//
//  PlayerDetailViewController.swift
//  Cricketer Info
//
//  Created by Gokul on 05/02/23.
//

import UIKit

class PlayerDetailViewController: UIViewController {
    
    @IBOutlet var playerImageView: UIImageView!
    @IBOutlet var playerNameLabel: UILabel!
    @IBOutlet var playerRoleLabel: UILabel!
    @IBOutlet var playerDescriptionTextView: UITextView!
    
    var playerData: PlayerInfoModel?
    var isCaptain: Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupViewWithData()
    }
    
    func setupNavigationBar() {
        self.navigationController?.title = "Player Detail"
        let backButton = UIBarButtonItem()
        backButton.title = "Back"
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
    }
    
    func setupViewWithData() {
        if let imageURL = URL(string: playerData?.image  ?? "") {
            self.playerImageView.load(url: imageURL)
        } else {
            playerImageView?.isHidden = true
        }
        self.playerNameLabel.text = playerData?.name ?? "-"
        let role = playerData?.role?.getText() ?? "-"
        if isCaptain ?? false {
            self.playerRoleLabel.text = "Captain ◎ \(role)"
        } else {
            self.playerRoleLabel.text = role
        }
        self.playerDescriptionTextView.isUserInteractionEnabled = false
        self.playerDescriptionTextView.text = playerData?.description ?? "-"
    }
}
