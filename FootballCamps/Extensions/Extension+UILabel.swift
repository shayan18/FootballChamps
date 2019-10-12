//
//  Extension+UILabel.swift
//  FootballCamps
//
//  Created by Shayan Ali on 13/10/2019.
//  Copyright © 2019 Shayan Ali. All rights reserved.
//

import UIKit

extension UILabel {
    func applyDynamicType(style: UIFont.TextStyle) {
        self.font =  UIFont.preferredFont(forTextStyle: style)
    }
}
