//
//  ChatScreen.swift
//  TransportesGranados
//
//  Created by Admin on 16/12/19.
//  Copyright © 2019 galosoft. All rights reserved.
//

import UIKit

class ChatScreen: UIViewController {
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        menuButton.target = self.revealViewController()
        menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }

}
