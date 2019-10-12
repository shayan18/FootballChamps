//
//  ClubTableViewCell.swift
//  FootballCamps
//
//  Created by Shayan Ali on 12/10/2019.
//  Copyright © 2019 Shayan Ali. All rights reserved.
//

import UIKit

class ClubTableViewCell: UITableViewCell {
    // MARK: Outlets
    @IBOutlet weak private var logoImageView: UIImageView!
    @IBOutlet weak private var nameLabel: UILabel!
    @IBOutlet weak private var countryLabel: UILabel!
    @IBOutlet weak private var worthLabel: UILabel!
    var viewModel: ClubViewModel! {
        didSet {
            logoImageView.downloaded(from: viewModel.logo)
            nameLabel.text = viewModel.name
            countryLabel.text = viewModel.country
            worthLabel.text = viewModel.value

        }
    }
    override func awakeFromNib() {
        updateFonts()
    }
    //dynamic type labels configuration
   private func updateFonts() {
        nameLabel.applyDynamicType(style: .headline)
        countryLabel.applyDynamicType(style: .footnote)
        worthLabel.applyDynamicType(style: .footnote)
    }
}
