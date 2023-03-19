import UIKit
protocol AppCoordinator: AnyObject {
    func start()
}

final class AppCoordinatorImpl: AppCoordinator {
    
    private var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let homePageViewController = HomePageCoordinatorImplementation(navigationController: navigationController)
        homePageViewController.start()
    }
}
