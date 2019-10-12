//
//  ViewController.swift
//  FootballCamps
//
//  Created by Shayan Ali on 12/10/2019.
//  Copyright © 2019 Shayan Ali. All rights reserved.
//

import UIKit

class ClubListViewController: UIViewController, Storyboarded {

    @IBOutlet weak var tableView: UITableView!
    
    weak var coordinator: MainCoordinator?

    var clubViewModels = [ClubViewModel]()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "ClubTableViewCell", bundle: nil), forCellReuseIdentifier: "ClubTableViewCell")
     //   self.tableView.registerCell(ClubTableViewCell.self)
        showClubs()
    }

    private func showClubs() {
        ClubManager.getClubList { [weak self] (result) in
            switch result {
            case .success(let clubList):
                self?.clubViewModels = clubList.map{ClubViewModel(club: $0)}
                self?.tableView.reloadData()
            case .failure(let error):
                self?.showAlert(message: error)
            }
        }
    }
}

extension ClubListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return clubViewModels.count
    }
 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as ClubTableViewCell
        cell.viewModel = clubViewModels[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        coordinator?.clubDetails(clubViewModels[indexPath.row])
 
    }
}


