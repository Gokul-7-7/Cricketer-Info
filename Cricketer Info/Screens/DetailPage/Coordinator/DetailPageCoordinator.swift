
import UIKit

protocol DetailPageCoordinator {
    func start()
}

final class DetailPageCoordinatorImplementation: DetailPageCoordinator {
    private var navigationViewController: UINavigationController
    private let input: Player
    
    init(
        navigationViewController: UINavigationController,
        input: Player
    ) {
        self.input = input
        self.navigationViewController = navigationViewController
    }
    
    func start() {
        let viewModel: PlayerDetailViewModel = PlayerDetailViewModel(playerData: input)
        let viewController = PlayerDetailViewController(viewModel: viewModel)        
        navigationViewController.pushViewController(viewController, animated: true)
    }
    
}
