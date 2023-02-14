//
//  PlayerDetailViewController.swift
//  Cricketer Info
//
//  Created by Gokul on 05/02/23.
//

import UIKit

class PlayerDetailViewController: UIViewController {
    
    var playerImageView: UIImageView = UIImageView()
    
    var playerNameLabel: UILabel = {
        let label = UILabel()
        label.font = .preferredFont(forTextStyle: .headline)
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    var playerRoleLabel: UILabel = {
        let label = UILabel()
        label.font = .italicSystemFont(ofSize: 13)
        label.textColor = .gray
        label.textAlignment = .center
        return label
    }()
    
    var playerDescriptionTextView: UITextView = {
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
    
    func setupConstraints() {
        setupPlayerImageViewConstraints()
        setupPlayerNameLabelConstraints()
        setupPlayerRoleLabelConstraints()
        setupPlayerDescriptionTextViewConstraints()
    }
    
    func setupPlayerImageViewConstraints() {
        self.view.addSubview(playerImageView)
        self.playerImageView.translatesAutoresizingMaskIntoConstraints = false
        playerImageView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        playerImageView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        playerImageView.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        playerImageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
    }
    
    func setupPlayerNameLabelConstraints() {
        self.view.addSubview(playerNameLabel)
        playerNameLabel.translatesAutoresizingMaskIntoConstraints = false
        playerNameLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        playerNameLabel.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -16).isActive = true
        playerNameLabel.topAnchor.constraint(equalTo: playerImageView.bottomAnchor, constant: 16).isActive = true
    }
    
    func setupPlayerRoleLabelConstraints() {
        self.view.addSubview(playerRoleLabel)
        playerRoleLabel.translatesAutoresizingMaskIntoConstraints = false
        playerRoleLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        playerRoleLabel.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -16).isActive = true
        playerRoleLabel.topAnchor.constraint(equalTo: playerNameLabel.bottomAnchor, constant: 16).isActive = true
    }
    
    func setupPlayerDescriptionTextViewConstraints() {
        self.view.addSubview(playerDescriptionTextView)
        playerDescriptionTextView.translatesAutoresizingMaskIntoConstraints = false
        playerDescriptionTextView.topAnchor.constraint(equalTo: playerRoleLabel.bottomAnchor, constant: 8).isActive = true
        playerDescriptionTextView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        playerDescriptionTextView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -16).isActive = true
        playerDescriptionTextView.bottomAnchor.constraint(greaterThanOrEqualTo: self.view.bottomAnchor, constant: 16).isActive = true
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
