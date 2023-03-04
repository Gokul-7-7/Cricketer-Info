import UIKit

class PlayerDetailViewController: UIViewController {
    
    let playerViews = PlayerDetailViews()
    var playerData: Player?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupConstraints()
        setupNavigationBar()
        setupViewWithData()
        setupNavigationBar()
    }
    
    func setupViewWithData() {
        guard let playerData else { return }
        playerViews.playerImageView.setImage(with: playerData.imageURL)
        playerViews.playerNameLabel.text = playerData.name
        let role = playerData.role.getDisplayTextAsEmojis
        playerViews.playerDescriptionTextView.isUserInteractionEnabled = false
        playerViews.playerDescriptionTextView.text = playerData.description
        if playerData.captain {
            playerViews.playerRoleLabel.text = "Captain ◎ \(role)"
        } else {
            playerViews.playerRoleLabel.text = role
        }
    }
}
