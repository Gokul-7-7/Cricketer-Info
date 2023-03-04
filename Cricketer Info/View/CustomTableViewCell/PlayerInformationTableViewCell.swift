import UIKit

class PlayerInformationTableViewCell: UITableViewCell {
    ///Property observers
    var playerData: Player? {
        didSet {
            playerDetailConfiguration()
        }
    }
    let playerInformationTableCellViews = PlayerInformationTableCellViews()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
    func playerDetailConfiguration() {
        guard let playerData else { return }
        playerInformationTableCellViews.playerImageView.setImage(with: playerData.imageURL)
        playerInformationTableCellViews.nameLabel.text = playerData.name
        if playerData.captain == true {
            playerInformationTableCellViews.roleLabel.text = "Captain ◎ \(playerData.role.getDisplayTextAsEmojis)"
        } else {
            playerInformationTableCellViews.roleLabel.text =  playerData.role.getDisplayTextAsEmojis
        }
    }
}

