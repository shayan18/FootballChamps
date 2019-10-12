//
//  ViewController.swift
//  FootballCamps
//
//  Created by Shayan Ali on 12/10/2019.
//  Copyright © 2019 Shayan Ali. All rights reserved.
//

import UIKit

class ClubListViewController: UIViewController, Storyboarded {
    // MARK: Outlets
    @IBOutlet weak private var tableView: UITableView!
    
    // MARK: Properties
    weak var coordinator: MainCoordinator?
    var clubViewModels = [ClubViewModel]()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(cellType: ClubTableViewCell.self)
        showClubs()
    }
    // API Request
    private func showClubs() {
        ClubManager.getClubList { [weak self] (result) in
            switch result {
            case .success(let clubList):
                self?.clubViewModels = clubList.map{ClubViewModel(club: $0)}
                
                self?.sortByName()
                self?.tableView.reloadData()
            case .failure(let error):
                self?.showAlert(message: error)
            }
        }
    }
}
// MARK: Sorting functions
extension ClubListViewController {
    private func sortbyTitles() {
          self.clubViewModels =  self.clubViewModels.sorted {$0.titles > $1.titles}
      }
      
      private func sortByName() {
          self.clubViewModels =  self.clubViewModels.sorted { $0.name < $1.name}
                                  
      }
}
// MARK: Button Actions
extension ClubListViewController {
    @IBAction func sortingButtonPressed(_ sender: UIBarButtonItem) {
        //sorting logic via sender tag
         if sender.tag == 0 {
            
            self.sortbyTitles()
                 sender.tag = 1
         }
             else {
            self.sortByName()
                 sender.tag -= 1
         }
         self.tableView.reloadData()
         
      }
}
// MARK: TableView Delegates
extension ClubListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return clubViewModels.count
    }
 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(with: ClubTableViewCell.self, for: indexPath) as ClubTableViewCell

        cell.viewModel = clubViewModels[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = ClubDetailsViewController.instantiate()
        vc.viewModel = clubViewModels[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
        
        //coordinator?.clubDetails(clubViewModels[indexPath.row])
 
    }
}


