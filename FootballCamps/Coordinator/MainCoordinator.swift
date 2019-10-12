//
//  MainCoordinator.swift
//  FootballCamps
//
//  Created by Shayan Ali on 12/10/2019.
//  Copyright © 2019 Shayan Ali. All rights reserved.
//

import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let vc = ClubListViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    func clubDetails(_ clubDetails: ClubViewModel) {
        let vc = ClubDetailsViewController.instantiate()
        vc.coordinator = self
        vc.viewModel = clubDetails
        navigationController.pushViewController(vc, animated: true)
    }
}
