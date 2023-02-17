//
//  PlayerDetailViewController.swift
//  Cricketer Info
//
//  Created by Gokul on 05/02/23.
//

import UIKit

class PlayerDetailViewController: UIViewController {
    
    lazy var playerImageView: UIImageView = UIImageView()
    
    lazy var playerNameLabel: UILabel = {
        let label = UILabel()
        label.font = .preferredFont(forTextStyle: .headline)
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    lazy var playerRoleLabel: UILabel = {
        let label = UILabel()
        label.font = .italicSystemFont(ofSize: 13)
        label.textColor = .gray
        label.textAlignment = .center
        return label
    }()
    
    lazy var playerDescriptionTextView: UITextView = {
        let textView = UITextView()
        textView.isUserInteractionEnabled = false
        textView.font = .systemFont(ofSize: 14)
        textView.textColor = .darkGray
        textView.textAlignment = .center
        return textView
    }()
    
    var playerData: PlayerInfoModel?
    var isCaptain: Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setupConstraints()
        setupViewWithData()
        setupNavigationBar()
    }
    
    func setupViewWithData() {
        if let imageURL = URL(string: playerData?.image  ?? "") {
            self.playerImageView.load(url: imageURL)
        } else {
            playerImageView.isHidden = true
        }
        self.playerNameLabel.text = playerData?.name ?? "-"
        let role = playerData?.role?.roleText ?? "-"
        if isCaptain ?? false {
            self.playerRoleLabel.text = "Captain ◎ \(role)"
        } else {
            self.playerRoleLabel.text = role
        }
        self.playerDescriptionTextView.isUserInteractionEnabled = false
        self.playerDescriptionTextView.text = playerData?.description ?? "-"
    }
}
