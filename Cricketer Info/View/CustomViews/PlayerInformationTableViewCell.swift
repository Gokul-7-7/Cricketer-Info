//
//  PlayerInformationTableViewCell.swift
//  Cricketer Info
//
//  Created by Gokul on 29/01/23.
//

import UIKit

class PlayerInformationTableViewCell: UITableViewCell {
    
    let playerInformationTableCellViews = PlayerInformationTableCellViews()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureView() {
        setupConstraints()
        playerInformationTableCellViews.containerView.clipsToBounds = true
        playerInformationTableCellViews.containerView.layer.cornerRadius = 5
    }
        
    func setupViewWith(data: Player) {
        if let imageURL = URL(string: data.imageURL) {
            playerInformationTableCellViews.playerImageView.load(url: imageURL)
        } else {
            playerInformationTableCellViews.playerImageView.isHidden = true
        }
        playerInformationTableCellViews.nameLabel.text = data.name
        if data.captain {
            playerInformationTableCellViews.roleLabel.text = "Captain ◎ \(data.role.getDisplayTextAsEmojis)"
        } else {
            playerInformationTableCellViews.roleLabel.text =  data.role.getDisplayTextAsEmojis
        }
    }
}

