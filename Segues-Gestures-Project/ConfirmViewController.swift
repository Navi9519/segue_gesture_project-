//
//  ConfirmViewController.swift
//  Segues-Gestures-Project
//
//  Created by Ivan Dedic on 2024-08-27.
//

import UIKit

class ConfirmViewController: UIViewController {
    
   
    @IBOutlet weak var userLabel: UILabel!
    
    var user: String? = nil
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        userLabel.text = user ?? "no name"
        // Do any additional setup after loading the view.
        
    }
    
    
   
    

    

}
