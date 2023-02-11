//
//  PlayerInformationTableViewCell.swift
//  Cricketer Info
//
//  Created by Gokul on 29/01/23.
//

import UIKit

class PlayerInformationTableViewCell: UITableViewCell {
    
    var isCaptain: Bool?
    
    var containerView: UIView = {
        var view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    var playerImageView: UIImageView = {
        var imageView = UIImageView()
        return imageView
    }()
    
    var nameLabel: UILabel = {
        var label = UILabel()
        label.font = .boldSystemFont(ofSize: 12)
        return label
    }()
    
    var roleLabel: UILabel = {
        var label = UILabel()
        label.font = .systemFont(ofSize: 10)
        return label
    }()
    
    var captainLabel: UILabel = {
        var label = UILabel()
        label.text = "Captain"
        label.textColor = .red
        label.font = .systemFont(ofSize: 11)
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepareForReuse() {
        playerImageView.image = nil
        nameLabel.text = nil
        roleLabel.text = nil
        captainLabel.text = nil
    }
    
    private func configureView() {
        setupConstraints()
        containerView.clipsToBounds = true
        containerView.layer.cornerRadius = 5
    }
    
    private func setupConstraints() {
        setupContainerViewConstraints()
        setupPlayerImageViewConstraints()
        setupNameLabel()
        //setupCaptainLabel()
        setupRoleLabel()
    }
    
    private func setupContainerViewConstraints() {
        contentView.addSubview(containerView)
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 4).isActive = true
        containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8).isActive = true
        containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8).isActive = true
        containerView.bottomAnchor.constraint(greaterThanOrEqualTo: contentView.bottomAnchor, constant: -2).isActive = true
    }
    
    private func setupPlayerImageViewConstraints() {
        addSubview(playerImageView)
        playerImageView.translatesAutoresizingMaskIntoConstraints = false
        playerImageView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        playerImageView.widthAnchor.constraint(equalToConstant: 40).isActive = true
        playerImageView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 2).isActive = true
        playerImageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 4).isActive = true
        playerImageView.bottomAnchor.constraint(greaterThanOrEqualTo: containerView.bottomAnchor, constant: -4).isActive = true
    }
    
    func setupNameLabel() {
        addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 2).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: playerImageView.trailingAnchor, constant: 2).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -4).isActive = true
        //playerImageView.bottomAnchor.constraint(greaterThanOrEqualTo: containerView.bottomAnchor, constant: -4).isActive = true
    }
    
    func setupCaptainLabel() {
        addSubview(captainLabel)
        captainLabel.translatesAutoresizingMaskIntoConstraints = false
        captainLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 2).isActive = true
        captainLabel.leadingAnchor.constraint(equalTo: playerImageView.trailingAnchor, constant: 2).isActive = true
        captainLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -4).isActive = true
    }
    
    func setupRoleLabel() {
        addSubview(roleLabel)
        roleLabel.translatesAutoresizingMaskIntoConstraints = false
        roleLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 2).isActive = true
        roleLabel.leadingAnchor.constraint(equalTo: playerImageView.trailingAnchor, constant: 2).isActive = true
        roleLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -4).isActive = true
        roleLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -8).isActive = true
    }
    
    func setupViewWith(data: PlayerInfoModel) {
        if let imageURL = URL(string: data.image  ?? "") {
            self.playerImageView.load(url: imageURL)
        } else {
            playerImageView.isHidden = true
        }
        self.nameLabel.text = data.name ?? "-"
        if isCaptain ?? false {
            self.roleLabel.text = "Captain ◎ \(data.role?.rawValue ?? "-")"
        } else {
            self.roleLabel.text =  data.role?.rawValue ?? "-"
        }
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
