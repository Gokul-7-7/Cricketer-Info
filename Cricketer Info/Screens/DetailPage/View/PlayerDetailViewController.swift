import UIKit

class PlayerDetailViewController: UIViewController {
    
    let playerViews = PlayerDetailViews()
    private var playerData: Player?
    let viewModel: PlayerDetailViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViewModel()
        setupConstraints()
        setupNavigationBar()
        setupViewWithData()
        setupNavigationBar()
    }
    
    init(viewModel: PlayerDetailViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViewModel() {
        viewModel?.onUpdate = { [weak self] state in
            self?.update(state: state)
        }
    }
    func update(state: PlayerDetailState) {
        switch state {
        case .loaded(let player):
            self.playerData = player
        }
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
