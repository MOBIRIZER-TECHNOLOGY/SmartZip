//
//  AboutCompanyVC.swift
//  SmartZip
//
//  Created by Pawan Dhawan on 14/09/16.
//  Copyright © 2016 Pawan Kumar. All rights reserved.
//

import UIKit

class AboutCompanyVC: UIViewController {
    
    
    
    @IBAction   func menuButtonAction(_ sender: AnyObject) {
        if let container = SideMenuManager.sharedManager().container {
            container.toggleDrawerSide(.Left, animated: true) { (val) -> Void in
                
            }
        }
    }
    
}
