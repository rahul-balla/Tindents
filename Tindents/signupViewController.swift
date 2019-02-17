//
//  signupViewController.swift
//  Tindents
//
//  Created by csuser on 2/3/19.
//  Copyright © 2019 Rahul Balla. All rights reserved.
//

import UIKit

class signupViewController: UIViewController {

    @IBOutlet var emailLbl: UITextField!
    @IBOutlet var userLbl: UITextField!
    @IBOutlet var nameLbl: UITextField!
    @IBOutlet var passLbl: UITextField!
    @IBOutlet var copyPassLbl: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        // Do any additional setup after loading the view.
    }
    
    @IBAction func createBtnPressed(_ sender: Any) {
        
        requests().signupRequest(email: emailLbl.text!, username:userLbl.text!, password: passLbl.text!, name:nameLbl.text!) { (response) in
            if let response = response {
                
                var success = response["success"] as? Int
                if success == 1 {
                    DispatchQueue.main.async {
                        self.performSegue(withIdentifier: "createSuccess", sender: self)
                    }
                }
                
                print("SUCCESS")
            } else {
                print("FAILURE")
            }
        }
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        //let viewController = segue.destination
    }
 

}
