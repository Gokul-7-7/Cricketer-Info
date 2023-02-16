//
//  Coordinator.swift
//  Cricketer Info
//
//  Created by Gokul on 16/02/23.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    var navigationController: UINavigationController { get set }
    func showPlayerDetail(playerData: PlayerInfoModel, isCaptain: Bool)
}
