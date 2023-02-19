//
//  Coordinator.swift
//  Cricketer Info
//
//  Created by Gokul on 16/02/23.
//

import Foundation
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
    
    func showPlayerDetail(playerData: PlayerInfoModel, isCaptain: Bool) {
        let detailVC = PlayerDetailViewController()
        detailVC.playerData = playerData
        detailVC.isCaptain = isCaptain
        navigationController.pushViewController(detailVC, animated: true)
    }
    //other navigations
}
