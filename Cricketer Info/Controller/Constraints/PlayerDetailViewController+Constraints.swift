//
//  PlayerDetailViewController+Constraints.swift
//  Cricketer Info
//
//  Created by Gokul on 17/02/23.
//

import Foundation
import UIKit

extension PlayerDetailViewController {
    
    func setupConstraints() {
        setupPlayerImageViewConstraints()
        setupPlayerNameLabelConstraints()
        setupPlayerRoleLabelConstraints()
        setupPlayerDescriptionTextViewConstraints()
    }
    
    func setupNavigationBar() {
        self.navigationController?.title = "Player Detail"
        let backButton = UIBarButtonItem()
        backButton.title = "Back"
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
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
}
