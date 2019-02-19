//
//  CreateGoalVC.swift
//  goalpost-app
//
//  Created by Adam Ballif on 2/18/19.
//  Copyright © 2019 Adam Ballif. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController, UITextViewDelegate {

    @IBOutlet weak var goalTxtView: UITextView!
    @IBOutlet weak var shortTermbtn: UIButton!
    @IBOutlet weak var longTermBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    var goalType: GoalType = .shortTerm
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextBtn.bindToKeyboard()
        shortTermbtn.setSelectedColor()
        longTermBtn.setDeselectedColor()
        goalTxtView.delegate = self

    }
    
    @IBAction func nextBtnWasPressed(_ sender: Any) {
        if goalTxtView.text != "" && goalTxtView.text != "What is your goal?" {
            guard let finishGoalVC = storyboard?.instantiateViewController(withIdentifier: "FinishGoalVC") as? FinishGoalVC else { return }
            finishGoalVC.initData(description: goalTxtView.text, type: goalType)
            presentDetail(finishGoalVC)
        }
    }
   
    @IBAction func longTermBtnWasPressed(_ sender: Any) {
        goalType = .longTerm
        longTermBtn.setSelectedColor()
        shortTermbtn.setDeselectedColor()
        }
        
    @IBAction func shortTermBtnWasPressed(_ sender: Any) {
        goalType = .shortTerm
        shortTermbtn.setSelectedColor()
        longTermBtn.setDeselectedColor()
        }
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        goalTxtView.text = ""
        goalTxtView.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
    
}
