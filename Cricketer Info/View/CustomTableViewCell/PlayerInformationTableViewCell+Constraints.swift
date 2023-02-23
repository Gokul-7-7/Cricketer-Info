//
//  PlayerInformationTableViewCell+Constraints.swift
//  Cricketer Info
//
//  Created by Gokul on 23/02/23.
//

import Foundation

extension PlayerInformationTableViewCell {
    
    func configureView() {
        setupConstraints()
        playerInformationTableCellViews.containerView.clipsToBounds = true
        playerInformationTableCellViews.containerView.layer.cornerRadius = 5
    }
    
    func setupConstraints() {
        setupContainerViewConstraints()
        setupPlayerImageViewConstraints()
        setupNameLabel()
        setupRoleLabel()
    }
    
    func setupContainerViewConstraints() {
        contentView.addSubview(playerInformationTableCellViews.containerView)
        playerInformationTableCellViews.containerView.anchor(top: contentView.topAnchor, leading: contentView.leadingAnchor, bottom: contentView.bottomAnchor, trailing: contentView.trailingAnchor, paddingTop: 4, paddingLeft: 8, paddingBottom: 4, paddingRight: 8, width: 0, height: 0, enableInsets: false)
    }
    
    func setupPlayerImageViewConstraints() {
        playerInformationTableCellViews.containerView.addSubview(playerInformationTableCellViews.playerImageView)
        playerInformationTableCellViews.playerImageView.anchor(top: playerInformationTableCellViews.containerView.topAnchor, leading: playerInformationTableCellViews.containerView.leadingAnchor, bottom: playerInformationTableCellViews.containerView.bottomAnchor, trailing: nil, paddingTop: 2, paddingLeft: 4, paddingBottom: 4, paddingRight: 0, width: 40, height: 40, enableInsets: false)
    }
    
    func setupNameLabel() {
        playerInformationTableCellViews.containerView.addSubview(playerInformationTableCellViews.nameLabel)
        playerInformationTableCellViews.nameLabel.anchor(top: playerInformationTableCellViews.containerView.topAnchor, leading: playerInformationTableCellViews.playerImageView.trailingAnchor, bottom: nil, trailing: playerInformationTableCellViews.containerView.trailingAnchor, paddingTop: 2, paddingLeft: 2, paddingBottom: 0, paddingRight: 4, width: nil, height: nil, enableInsets: false)
    }
    
    func setupRoleLabel() {
        playerInformationTableCellViews.containerView.addSubview(playerInformationTableCellViews.roleLabel)
        playerInformationTableCellViews.roleLabel.anchor(top: playerInformationTableCellViews.nameLabel.bottomAnchor, leading: playerInformationTableCellViews.playerImageView.trailingAnchor, bottom: playerInformationTableCellViews.containerView.bottomAnchor, trailing: playerInformationTableCellViews.containerView.trailingAnchor, paddingTop: 2, paddingLeft: 2, paddingBottom: 8, paddingRight: 4, width: nil, height: nil, enableInsets: false)
    }
}
