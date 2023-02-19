//
//  PlayerDetailViewController.swift
//  Cricketer Info
//
//  Created by Gokul on 05/02/23.
//

import UIKit

protocol Something: AnyObject {
    func doNothing()
}

struct What: Something {
    func doNothing() {
        <#code#>
    }
    
    
}

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
        view.backgroundColor = .white
        setupConstraints()
        setupViewWithData()
        setupNavigationBar()
    }
    
    func setupViewWithData() {
        if let imageURL = URL(string: playerData?.image  ?? "") {
            playerImageView.load(url: imageURL)
        } else {
            playerImageView.isHidden = true
        }
        playerNameLabel.text = playerData?.name ?? "-"
        let role = playerData?.role?.roleText ?? "-"
        if isCaptain ?? false {
            playerRoleLabel.text = "Captain ◎ \(role)"
        } else {
            playerRoleLabel.text = role
        }
        playerDescriptionTextView.isUserInteractionEnabled = false
        playerDescriptionTextView.text = playerData?.description ?? "-"
    }
}
