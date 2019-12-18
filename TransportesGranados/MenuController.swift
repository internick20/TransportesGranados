//
//  MenuController.swift
//  TransportesGranados
//
//  Created by Admin on 10/12/19.
//  Copyright © 2019 galosoft. All rights reserved.
//

import UIKit

class MenuController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var tableViewMenu: UITableView!
    
    var menuOptions = ["Home", "Chat","Contacto","Nosotros","Unidades"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewMenu.delegate = self
        tableViewMenu.dataSource = self
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.revealViewController()?.rearViewRevealWidth = 240
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuOptions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : MenuCell = tableViewMenu.dequeueReusableCell(withIdentifier: "MenuCell") as! MenuCell
        cell.lblMenu.text = menuOptions[indexPath.row]
        cell.imgMenuImage.image = UIImage(named:menuOptions[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: menuOptions[indexPath.row], sender: self)
    }
}
