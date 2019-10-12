//
//  Reusable.swift
//  FootballCamps
//
//  Created by Shayan Ali on 12/10/2019.
//  Copyright © 2019 Shayan Ali. All rights reserved.
//

import UIKit
protocol Reusable {}
extension UITableViewCell: Reusable {}

extension Reusable where Self: UITableViewCell {
        static var reuseId: String { String(describing: self)}
}
