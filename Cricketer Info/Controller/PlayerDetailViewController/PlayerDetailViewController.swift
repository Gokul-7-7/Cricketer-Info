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
        if let imageURL = URL(string: playerData?.imageURL ?? "") {
            playerViews.playerImageView.load(url: imageURL)
        } else {
            playerViews.playerImageView.isHidden = true
        }
        playerViews.playerNameLabel.text = playerData?.name ?? "-"
        let role = playerData?.role.getDisplayTextAsEmojis
        if let role = playerData?.role.getDisplayTextAsEmojis, playerData?.captain ?? false {
            playerViews.playerRoleLabel.text = "Captain ◎ \(role)"
        } else {
            playerViews.playerRoleLabel.text = role
        }
        playerViews.playerDescriptionTextView.isUserInteractionEnabled = false
        playerViews.playerDescriptionTextView.text = playerData?.description ?? "-"
    }
}
