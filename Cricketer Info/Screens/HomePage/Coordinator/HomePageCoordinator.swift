import UIKit

protocol HomePageCoordinator {
    func start()
}

final class HomePageCoordinatorImplementation: HomePageCoordinator {
    
    private var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewModel = HomePageViewModel(actionHandler: self)
        let rootViewController = HomePageViewController(viewModel: viewModel)
        navigationController.setViewControllers(
            [
                rootViewController
            ],
            animated: false
        )
    }
}

extension HomePageCoordinatorImplementation: HomePageActionHandler {
    func openDetailView(with input: Player) {
        let detailCoordinator = DetailPageCoordinatorImplementation(navigationViewController: navigationController, input: input)
        detailCoordinator.start()
    }
}
