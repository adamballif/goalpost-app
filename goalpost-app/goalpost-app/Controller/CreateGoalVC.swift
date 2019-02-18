//
//  CreateGoalVC.swift
//  goalpost-app
//
//  Created by Adam Ballif on 2/18/19.
//  Copyright © 2019 Adam Ballif. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController {

    @IBOutlet weak var goalTxtView: UITextView!
    @IBOutlet weak var shortTermbtn: UIButton!
    @IBOutlet weak var longTermBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func nextBtnWasPressed(_ sender: Any) {
        
    }
   
    @IBAction func longTermBtnWasPressed(_ sender: Any) {
        }
        
    @IBAction func shortTermBtnWasPressed(_ sender: Any) {
        }
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    }
    
    
}
