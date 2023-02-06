//
//  PlayerInformationTableViewCell.swift
//  Cricketer Info
//
//  Created by Gokul on 29/01/23.
//

import UIKit

class PlayerInformationTableViewCell: UITableViewCell {

    @IBOutlet var playerImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var roleLabel: UILabel!
    @IBOutlet var parentStackView: UIStackView!
    @IBOutlet var containerView: UIView!
    @IBOutlet var captainLabel: UILabel!
        
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
        playerImageView.clipsToBounds = true
        playerImageView.layer.cornerRadius = 5
        containerView.clipsToBounds = true
        containerView.layer.cornerRadius = 5
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
            playerImageView?.isHidden = true
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
