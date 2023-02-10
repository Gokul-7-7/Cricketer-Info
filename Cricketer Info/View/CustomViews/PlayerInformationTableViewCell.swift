//
//  PlayerInformationTableViewCell.swift
//  Cricketer Info
//
//  Created by Gokul on 29/01/23.
//

import UIKit

class PlayerInformationTableViewCell: UITableViewCell {
    
    var containerView: UIView {
        var view = UIView()
        return view
    }
    
    var verticalStackView: UIStackView {
        var stackView = UIStackView()
        stackView.axis = .vertical
        return stackView
    }
    
    var playerImageView: UIImageView {
        var imageView = UIImageView()
        return imageView
    }
    
    var nameLabel: UILabel {
        var label = UILabel()
        return label
    }
    var roleLabel: UILabel {
        var label = UILabel()
        return label
    }
    var captainLabel: UILabel {
        var label = UILabel()
        return label
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        configureView()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override func prepareForReuse() {
        playerImageView.image = nil
        nameLabel.text = nil
        roleLabel.text = nil
        captainLabel.text = nil
    }
    
    func configureView() {
        setupConstraints()
        playerImageView.clipsToBounds = true
        playerImageView.layer.cornerRadius = 5
        containerView.clipsToBounds = true
        containerView.layer.cornerRadius = 5
    }
    
    func setupConstraints() {
        setupContainerViewConstraints()
        setupPlayerImageViewConstraints()
    }
    
    func setupContainerViewConstraints() {
        contentView.addSubview(containerView)
        containerView.anchor(top: contentView.safeAreaLayoutGuide.topAnchor, leading: contentView.safeAreaLayoutGuide.leadingAnchor, bottom: contentView.safeAreaLayoutGuide.bottomAnchor, trailing: contentView.safeAreaLayoutGuide.trailingAnchor, paddingTop: 4, paddingLeft: 8, paddingBottom: 4, paddingRight: 8, width: nil, height: nil, enableInsets: false)
    }
    
    func setupPlayerImageViewConstraints() {
        containerView.addSubview(playerImageView)
        playerImageView.translatesAutoresizingMaskIntoConstraints = false
        playerImageView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 4).isActive = true
        playerImageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 4).isActive = true
        playerImageView.bottomAnchor.constraint(greaterThanOrEqualTo: containerView.bottomAnchor, constant: 4).isActive = true
    }
    
    
    
    func setupViewWith(data: PlayerInfoModel, isCaptain: Bool) {
        if isCaptain {
            captainLabel.isHidden = false
        } else {
            captainLabel.isHidden = true
        }
        if let imageURL = URL(string: data.image  ?? "") {
            self.playerImageView.load(url: imageURL)
        } else {
            playerImageView.isHidden = true
        }
        self.nameLabel.text = data.name ?? "-"
        self.roleLabel.text = data.role?.rawValue ?? "-"
    }
}

extension UIImageView {
    func load(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
