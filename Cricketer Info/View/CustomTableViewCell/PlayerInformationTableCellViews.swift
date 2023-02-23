//
//  PlayerInformationTableCellViews.swift
//  Cricketer Info
//
//  Created by Gokul on 23/02/23.
//

import UIKit

class PlayerInformationTableCellViews {
    lazy var containerView: UIView = {
        var view = UIView()
        return view
    }()
    
    lazy var playerImageView: UIImageView = {
        var imageView = UIImageView()
        return imageView
    }()
    
    lazy var nameLabel: UILabel = {
        var label = UILabel()
        label.font = .boldSystemFont(ofSize: 12)
        return label
    }()
    
    lazy var roleLabel: UILabel = {
        var label = UILabel()
        label.font = .systemFont(ofSize: 10)
        return label
    }()
}
