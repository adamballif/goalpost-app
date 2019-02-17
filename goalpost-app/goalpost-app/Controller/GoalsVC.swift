//
//  GoalsVC.swift
//  goalpost-app
//
//  Created by Adam Ballif on 2/17/19.
//  Copyright © 2019 Adam Ballif. All rights reserved.
//

import UIKit

class GoalsVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func addGoalBtnWasPressed(_ sender: Any) {
        print("button was pressed")
    }
    
}

