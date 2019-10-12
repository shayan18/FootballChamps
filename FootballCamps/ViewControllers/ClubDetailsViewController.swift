//
//  ClubDetailsViewController.swift
//  FootballCamps
//
//  Created by Shayan Ali on 12/10/2019.
//  Copyright © 2019 Shayan Ali. All rights reserved.
//

import UIKit

class ClubDetailsViewController: UIViewController, Storyboarded {
    // MARK: Outlets
    @IBOutlet weak private var logoImageView: UIImageView!
    @IBOutlet weak private var countryLabel: UILabel!
    @IBOutlet weak private var detailsTextView: UITextView!
    // MARK: Properties
    weak var coordinator: MainCoordinator?
    var viewModel: ClubViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareUI()
        populateView()
    }
    //dynamic type labels
    private func prepareUI() {
        countryLabel.applyDynamicType(style: .headline)
        detailsTextView.font =  UIFont.preferredFont(forTextStyle: .body)
    }
    private func populateView() {
        if let viewModel = viewModel {
                   countryLabel.text = viewModel.country
                   logoImageView.downloaded(from: viewModel.logo)
                   detailsTextView.text = Helper.clubDetails(name: viewModel.name, country: viewModel.country, value: viewModel.value)
               }
    }
}
