import UIKit

class MainCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func showHomePage() {
        let homepageVC = HomePageViewController()
        navigationController.pushViewController(homepageVC, animated: false)
    }
    
    func showPlayerDetail(playerData: Player) {
        let detailVC = PlayerDetailViewController()
        detailVC.playerData = playerData
        navigationController.pushViewController(detailVC, animated: true)
    }
    //other navigations
}
