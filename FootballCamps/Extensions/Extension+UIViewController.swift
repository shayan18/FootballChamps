//
//  Extension+UIViewController.swift
//  FootballCamps
//
//  Created by Shayan Ali on 12/10/2019.
//  Copyright © 2018 Shayan Ali. All rights reserved.
//

import Foundation
import UIKit
extension UIViewController{
    /**
     Show alert on the calling view controller
     
     -parameter title
     -parameter messsage
     */
    func showAlert(title:String? = "Error",message:String){
        let alertController=UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction=UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (action) in
            alertController.dismiss(animated: true, completion: nil)
        }
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
}

