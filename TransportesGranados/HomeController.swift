//
//  HomeController.swift
//  TransportesGranados
//
//  Created by Admin on 10/12/19.
//  Copyright © 2019 galosoft. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    
    @IBOutlet weak var menuButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuButton.addTarget(revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())

    }
    
    
    @IBAction func openMenuScreen(_ sender: UIButton) {
        let btnTitle = sender.currentTitle!
        
        self.revealViewController()?.rearViewController.performSegue(withIdentifier: btnTitle, sender: self.revealViewController()?.rearViewController)
        
        
    }
    
}
