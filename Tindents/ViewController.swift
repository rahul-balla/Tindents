//
//  ViewController.swift
//  Tindents
//
//  Created by Rahul Balla on 1/31/19.
//  Copyright © 2019 Rahul Balla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var emailTxt: UITextField!
    @IBOutlet var passTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onLoginPressed(_ sender: Any) {
        
        let tabBarControl = storyboard?.instantiateViewController(withIdentifier: "MainTabController") as! MainTabController
        
        requests().loginRequest(email: emailTxt.text!, password: passTxt.text!) { (response) in
            if let response = response {
                
                var success = response["success"] as? Int
                if success == 1 {
                    DispatchQueue.main.async {
                        self.performSegue(withIdentifier: "loginSuccess", sender: self)
                    }
                }
                
                //print(response)
                print("SUCCESS")
            } else {
                print("FAILURE")
            }
        }
        
    }
    
}

