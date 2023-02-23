//
//  PlayerDetailViewController+Constraints.swift
//  Cricketer Info
//
//  Created by Gokul on 17/02/23.
//
///UI kit is a framework provided by Apple in iOS development that allows developers to create user interfaces for their applications. Importing UI kit into a Swift project is necessary because it provides a set of pre-built components and tools that can be used to create visually appealing and interactive user interfaces.
///When you import UI kit into a Swift project, you gain access to a range of pre-built user interface components such as buttons, labels, text fields, and views. These components are designed to be easily customizable and can be used to build complex user interfaces.
///Additionally, UI kit provides a range of tools for handling user input, animations, and transitions, which can help improve the overall user experience of your application.
///Without importing UI kit, developers would need to build all the user interface components from scratch, which would be time-consuming and error-prone. Importing UI kit streamlines the process of creating user interfaces and helps ensure that the application is consistent with the design guidelines set by Apple.
import UIKit

extension PlayerDetailViewController {
    
    func setupConstraints() {
        setupPlayerImageViewConstraints()
        setupPlayerNameLabelConstraints()
        setupPlayerRoleLabelConstraints()
        setupPlayerDescriptionTextViewConstraints()
    }
    
    func setupNavigationBar() {
        title = "Player Detail"
        let backButton = UIBarButtonItem()
        backButton.title = "Back"
        navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
    }
    
    func setupPlayerImageViewConstraints() {
        view.addSubview(playerViews.playerImageView)
        playerViews.playerImageView.translatesAutoresizingMaskIntoConstraints = false
        playerViews.playerImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        playerViews.playerImageView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        playerViews.playerImageView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        playerViews.playerImageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
    }
    
    func setupPlayerNameLabelConstraints() {
        view.addSubview(playerViews.playerNameLabel)
        playerViews.playerNameLabel.translatesAutoresizingMaskIntoConstraints = false
        playerViews.playerNameLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        playerViews.playerNameLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16).isActive = true
        playerViews.playerNameLabel.topAnchor.constraint(equalTo: playerViews.playerImageView.bottomAnchor, constant: 16).isActive = true
    }
    
    func setupPlayerRoleLabelConstraints() {
        view.addSubview(playerViews.playerRoleLabel)
        playerViews.playerRoleLabel.translatesAutoresizingMaskIntoConstraints = false
        playerViews.playerRoleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        playerViews.playerRoleLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16).isActive = true
        playerViews.playerRoleLabel.topAnchor.constraint(equalTo: playerViews.playerNameLabel.bottomAnchor, constant: 16).isActive = true
    }
    
    func setupPlayerDescriptionTextViewConstraints() {
        view.addSubview(playerViews.playerDescriptionTextView)
        playerViews.playerDescriptionTextView.translatesAutoresizingMaskIntoConstraints = false
        playerViews.playerDescriptionTextView.topAnchor.constraint(equalTo: playerViews.playerRoleLabel.bottomAnchor, constant: 8).isActive = true
        playerViews.playerDescriptionTextView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        playerViews.playerDescriptionTextView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16).isActive = true
        playerViews.playerDescriptionTextView.bottomAnchor.constraint(greaterThanOrEqualTo: view.bottomAnchor, constant: 16).isActive = true
    }
}
